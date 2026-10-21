# 🧰 Tools

## 📄 PDF Build Guide
[build_pdf.ps1](build_pdf.ps1) combines the Markdown pages of this repository into one PDF build guide with cover page, table of contents and page numbers.

```powershell
powershell -ExecutionPolicy Bypass -File tools\build_pdf.ps1
```

The PDF is written to `tools\output\DIY_FFB_Pedal_Build_Guide.pdf`.

* **Requirements:** Windows with Microsoft Edge and an internet connection. Nothing else needs to be installed.
* **How it works:** The pages are rendered with the GitHub Markdown API, so they look like on GitHub. Microsoft Edge prints the result to PDF. Links between the pages become jumps inside the PDF, links to other files point to GitHub.
* **Chapters:** The chapter list and order are defined at the top of the script. The layout is defined in [build_pdf.css](build_pdf.css).
