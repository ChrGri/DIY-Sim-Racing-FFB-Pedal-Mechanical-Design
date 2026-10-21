# Builds the PDF build guide from the Markdown pages of this repository.
#
# Usage (from the repository root):
#   powershell -ExecutionPolicy Bypass -File tools\build_pdf.ps1
#
# The Markdown is rendered with the GitHub Markdown API (same look as on GitHub,
# including alerts) and printed to PDF with Microsoft Edge in headless mode.

param(
  [string]$Out = "tools\output\DIY_FFB_Pedal_Build_Guide.pdf",
  [string]$Repo = "ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design",
  [string]$Branch = "main"
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$root = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path
$repoUrl = "https://github.com/$Repo"

# chapters in build order: source file and title shown in the PDF
$chapters = @(
  @{ File = "README.md";                                         Title = "🏁 Overview" },
  @{ File = "BOM\Mechanics\README.md";                           Title = "📦 Mechanical BOM" },
  @{ File = "BOM\Electronics\README.md";                         Title = "📦 Electronics BOM" },
  @{ File = "PcbOrder\README.md";                                Title = "🧾 Order PCB" },
  @{ File = "MechanicalDesign_11_20215\Build\Assembly_PedalArm.md"; Title = "🦶 Mechanical Assembly" },
  @{ File = "Soldering_V8\README.md";                            Title = "🔌 Electronics Assembly (PCB V8)" },
  @{ File = $null;                                               Title = "🔥 Hardware Brake Resistor" },
  @{ File = "FinalizingSoftware\README.md";                      Title = "💻 Software Finalization" }
)

$brakeResistorMarkdown = @"
The servo supply is provided by the external hardware brake resistor module. One module per rig supplies all servos.

The parts list, the schematic and the build guide can be found in the [Diy_Hardware_BrakeResistor](https://github.com/ChrGri/Diy_Hardware_BrakeResistor) repository.

> [!WARNING]
> Keep the PSU at ≤ 37 V. Above the zener threshold of the brake resistor module, the brake resistor stays switched on permanently.
"@

# map of full source path -> chapter index, used to turn links between pages into jumps inside the PDF
$chapterIndex = @{}
for ($i = 0; $i -lt $chapters.Count; $i++) {
  if ($chapters[$i].File) { $chapterIndex[(Join-Path $root $chapters[$i].File).ToLower()] = $i }
}

$alertTitles = @{ note = "ℹ️ Note"; tip = "💡 Tip"; important = "❗ Important"; warning = "⚠️ Warning"; caution = "🛑 Caution" }

function Resolve-Link([string]$target, [string]$dir, [int]$chapter) {
  if ($target -match "^(https?:|mailto:|data:)") { return $target }
  if ($target.StartsWith("#")) { return "#c$chapter-" + $target.Substring(1) }

  $path, $anchor = $target.Split("#", 2)
  $full = [IO.Path]::GetFullPath((Join-Path $dir ([Uri]::UnescapeDataString($path))))
  $md = $full
  if (Test-Path $full -PathType Container) { $md = Join-Path $full "README.md" }
  $key = $md.ToLower()
  if ($chapterIndex.ContainsKey($key)) {
    $c = $chapterIndex[$key]
    if ($anchor) { return "#c$c-$anchor" } else { return "#c$c" }
  }

  # any other file of the repository: link to GitHub
  $rel = $full.Substring($root.Length + 1).Replace("\", "/")
  $kind = "blob"; if (Test-Path $full -PathType Container) { $kind = "tree" }
  $url = "$repoUrl/$kind/$Branch/" + (($rel.Split("/") | ForEach-Object { [Uri]::EscapeDataString($_) }) -join "/")
  if ($anchor) { $url += "#$anchor" }
  return $url
}

function Convert-Markdown([string]$markdown) {
  $body = @{ text = $markdown; mode = "markdown"; context = $Repo } | ConvertTo-Json
  $r = Invoke-WebRequest -UseBasicParsing -Method Post -Uri "https://api.github.com/markdown" `
    -Body ([Text.Encoding]::UTF8.GetBytes($body)) -ContentType "application/json; charset=utf-8" `
    -Headers @{ Accept = "application/vnd.github+json"; "User-Agent" = "build-pdf" }
  $ms = New-Object IO.MemoryStream
  $r.RawContentStream.CopyTo($ms)
  return [Text.Encoding]::UTF8.GetString($ms.ToArray())
}

$sections = @()
$toc = @()
for ($i = 0; $i -lt $chapters.Count; $i++) {
  $ch = $chapters[$i]
  if ($ch.File) {
    $src = Join-Path $root $ch.File
    $dir = Split-Path $src
    $md = [IO.File]::ReadAllText($src, [Text.Encoding]::UTF8)
  } else {
    $src = $null; $dir = $root; $md = $brakeResistorMarkdown
  }

  if ($ch.File -eq "README.md") {
    # the banner is on the cover page, and the star history does not belong into a printed guide
    $md = [regex]::Replace($md, '(?s)^\s*<p align="center">.*?</p>\s*', "")
    $md = [regex]::Replace($md, '(?s)\n---\s*\n## ⭐ Star History.*$', "`n")
  }
  # the PDF has its own table of contents
  $md = [regex]::Replace($md, '(?s)\n## 📑 Table of Contents.*?\n---\s*\n', "`n")
  # the chapter title replaces the first heading of the page
  $md = [regex]::Replace($md, '(?m)\A\s*# [^\r\n]*\r?\n', "")

  # GitHub alerts ("> [!NOTE]") are only rendered in comment mode, so they are marked here and styled after rendering
  $md = [regex]::Replace($md, '(?m)^>\s*\[!(NOTE|TIP|IMPORTANT|WARNING|CAUTION)\]\s*$', "> ALERTSTART-`$1`n>")

  # replace every relative link and image by a placeholder, since the API would drop local paths
  $targets = New-Object System.Collections.ArrayList
  $isImage = New-Object System.Collections.ArrayList
  $md = [regex]::Replace($md, '(!?)\[([^\]]*)\]\(([^)\s]+)\)', [Text.RegularExpressions.MatchEvaluator]{
    param($m)
    $n = $targets.Add($m.Groups[3].Value); [void]$isImage.Add($m.Groups[1].Value -eq "!")
    "$($m.Groups[1].Value)[$($m.Groups[2].Value)](ph-$n-ph)"
  })
  $md = [regex]::Replace($md, '\b(src|href)="([^"]+)"', [Text.RegularExpressions.MatchEvaluator]{
    param($m)
    $n = $targets.Add($m.Groups[2].Value); [void]$isImage.Add($m.Groups[1].Value -eq "src")
    "$($m.Groups[1].Value)=""ph-$n-ph"""
  })

  $html = Convert-Markdown $md

  # resolve the placeholders: images to local files, links to PDF jumps or GitHub URLs
  $html = [regex]::Replace($html, '\b(src|href)="[^"]*?ph-(\d+)-ph"', [Text.RegularExpressions.MatchEvaluator]{
    param($m)
    $n = [int]$m.Groups[2].Value
    $t = $targets[$n]
    if ($isImage[$n] -and $t -notmatch "^(https?:|data:)") {
      $file = [IO.Path]::GetFullPath((Join-Path $dir ([Uri]::UnescapeDataString($t))))
      $v = ([Uri]$file).AbsoluteUri
    } else {
      $v = Resolve-Link $t $dir $i
    }
    "$($m.Groups[1].Value)=""$v"""
  })
  # images are wrapped in links to themselves, which makes no sense on paper
  $html = [regex]::Replace($html, '<a target="_blank" rel="noopener noreferrer" href="[^"]*">(<img [^>]*>)</a>', '$1')

  $html = [regex]::Replace($html, '(?s)<blockquote>\s*<p>ALERTSTART-(\w+)</p>(.*?)</blockquote>', [Text.RegularExpressions.MatchEvaluator]{
    param($m)
    $type = $m.Groups[1].Value.ToLower()
    "<div class=""markdown-alert markdown-alert-$type""><p class=""markdown-alert-title"">$($alertTitles[$type])</p>$($m.Groups[2].Value)</div>"
  })

  # headings and explicit anchors get ids that are unique within the whole PDF (GitHub's slugs, prefixed by the chapter)
  $html = [regex]::Replace($html, '(?s)<div class="markdown-heading"><h([1-6]) class="heading-element">(.*?)</h\1><a id="user-content-([^"]*)".*?</a></div>', [Text.RegularExpressions.MatchEvaluator]{
    param($m)
    $level = $m.Groups[1].Value; $text = $m.Groups[2].Value; $id = "c$i-$($m.Groups[3].Value)"
    $script:toc += @{ Level = [int]$level; Text = $text; Id = $id; Chapter = $i }
    "<h$level id=""$id"">$text</h$level>"
  })
  $html = $html.Replace('id="user-content-', "id=""c$i-")

  $source = ""
  if ($ch.File) {
    $online = "$repoUrl/blob/$Branch/" + $ch.File.Replace("\", "/")
    $source = "<p class=""source"">Online version: <a href=""$online"">$online</a></p>"
  }
  $sections += "<section class=""chapter"" id=""c$i""><h1 class=""chapter-title"">$($ch.Title)</h1>$source$html</section>"
}

# table of contents: chapters and their second level headings
$tocHtml = ""
for ($i = 0; $i -lt $chapters.Count; $i++) {
  $subs = $toc | Where-Object { $_.Chapter -eq $i -and $_.Level -eq 2 } | ForEach-Object { "<li><a href=""#$($_.Id)"">$($_.Text)</a></li>" }
  $tocHtml += "<li><a href=""#c$i"">$($chapters[$i].Title)</a>"
  if ($subs) { $tocHtml += "<ul>$($subs -join '')</ul>" }
  $tocHtml += "</li>"
}

Push-Location $root
$commit = (git rev-parse --short HEAD).Trim()
Pop-Location
$date = Get-Date -Format "yyyy-MM-dd"
$banner = ([Uri](Join-Path $root "Images\banner.png")).AbsoluteUri
$css = [IO.File]::ReadAllText((Join-Path $PSScriptRoot "build_pdf.css"), [Text.Encoding]::UTF8)

$doc = @"
<!doctype html>
<html lang="en"><head><meta charset="utf-8"><title>DIY Sim Racing FFB Pedal - Build Guide</title><style>$css</style></head>
<body class="markdown-body">
<section class="cover">
  <img class="banner" src="$banner" alt="DIY Simracing FFB Pedal">
  <h1>Build Guide</h1>
  <p class="subtitle">Mechanical design, PCB V8 and software setup</p>
  <p class="meta">Version $date · commit $commit<br><a href="$repoUrl">$repoUrl</a></p>
</section>
<section class="toc"><h1 class="chapter-title">📑 Contents</h1><ol>$tocHtml</ol></section>
$($sections -join "`n")
</body></html>
"@

$outFull = [IO.Path]::GetFullPath((Join-Path $root $Out))
New-Item -ItemType Directory -Force (Split-Path $outFull) | Out-Null
$htmlFile = [IO.Path]::ChangeExtension($outFull, ".html")
[IO.File]::WriteAllText($htmlFile, $doc, (New-Object Text.UTF8Encoding $false))

$edge = "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
if (-not (Test-Path $edge)) { $edge = "$env:ProgramFiles\Microsoft\Edge\Application\msedge.exe" }
$profileDir = Join-Path $env:TEMP "build_pdf_edge"
$edgeArgs = @("--headless", "--disable-gpu", "--no-pdf-header-footer", "--user-data-dir=""$profileDir""",
  "--virtual-time-budget=20000", "--print-to-pdf=""$outFull""", ([Uri]$htmlFile).AbsoluteUri)
Start-Process -FilePath $edge -ArgumentList $edgeArgs -Wait -NoNewWindow
"PDF written to $outFull ($([int]((Get-Item $outFull).Length / 1KB)) kB)"
