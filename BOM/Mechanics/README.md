# 📦 Bill of Materials (BOM)
Given prices are just indicators. Sellers regularly offer discounted prices, e.g. I paid for the iSV57 60€, for the linear rail 46€.

Disclosure: Some of the links below are affiliate links, which means we may receive a commission at no cost to you if you make a purchase. By using the provided links, you help me buy tools or hardware for further investigations.

## 🦶 Mechanical Parts

All parts below are needed for one pedal. The column "Used in" links to the assembly step in the [mechanical assembly guide](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md). The load cell, the PSU and the PCB are listed in the [electronics BOM](../Electronics/README.md).

### 🖨️ 3D Printed Parts
Print settings can be found [here](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#print-settings).

| Part | Material | Quantity | STL | Used in |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| Pedal arm | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/PedalArm/PedalArm.stl) | [Prepare pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#prepare-pedal-arm) |
| Faceplate | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/Faceplate/Faceplate.stl) | [Side guards](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#side-guards) |
| Side guard | PETG‑CF | 2 | [STL](../../MechanicalDesign_11_20215/Build/STL/Faceplate/SideGuard.stl) | [Side guards](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#side-guards) |
| Loadcell arm (back) | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/LoadcellArm/Loadcell-Arm-Back.stl) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |
| Loadcell arm (front) | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/LoadcellArm/Loadcell-Arm-Front.stl) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |
| Upper loadcell arm adapter | TPE 83A | 2 | [STL](../../MechanicalDesign_11_20215/Build/STL/UpperLoadcellArmAdapter/8mmUpperAdapter%20v4.stl) | [Loadcell to pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-to-pedal-arm) |
| Lower loadcell arm adapter | TPE 83A | 2 | [STL](../../MechanicalDesign_11_20215/Build/STL/LowerLoadcellArmAdapter/8mmLowerAdapter_v3.stl) | [Loadcell arm to sled](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-to-sled) |
| 3060 adapter plate | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/3060_adapter/JKK60_to_3060_adapter.stl) | [Mount rail to 3060 profile](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-rail-to-3060-profile) |
| Rail side cover (left) | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/RailCover/Cover_left.stl) | [Rail side covers](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#rail-side-covers) |
| Rail side cover (right) | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/RailCover/Cover_right.stl) | [Rail side covers](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#rail-side-covers) |
| 3060 end cover | PETG‑CF | 2 | [STL](../../MechanicalDesign_11_20215/Build/STL/3060EndCover/3060_cover.stl) | [Attach 3060 cover](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-3060-cover) |
| PCB spacer | PETG‑CF | 1 | [STL](../../MechanicalDesign_11_20215/Build/STL/RailCover/PCBSpacer.stl) | [Attach PCB](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-pcb) |

<a id="servo-rail-profile-and-bearings"></a>
### ⚙️ Servo, Rail, Profile and Bearings
Buy either the hardware bundle (**option A**) or the servo, rail and coupler separately (**option B**).

| Part | Info | Quantity | Primary link | Secondary link | Used in |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| **Option A:** Hardware bundle: servo + rail + coupler | StepperOnline bundle with iSV57T-130S servo, LKN60 linear rail and coupler | 1 | [link](https://www.omc-stepperonline.com/de/hardware-paket-fuer-diy-aktivpedal-von-chris-empfohlen-von-l-atelier-mit-isv57t-130s-lkn60-23dl060-060-st-rc07-act-pdl?tracking=6721c5865911c) | | [Mount iSV57 servo to rail](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-isv57-servo-to-rail) |
| **Option B:** iSV57T-130S servo | bought separately, see servo selection below | 1 | [130s link](https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s?tracking=6721c5865911c) | [180s link](https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-180w-3000rpm-0-6nm-84-98oz-in-20-50vdc-servomotor-kurze-welle-isv57t-180s?tracking=6721c5865911c) | [Mount iSV57 servo to rail](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-isv57-servo-to-rail) |
| **Option B:** KK60 linear rail | Brake: JKK60-5-C-150-A1-F4-M (5 mm spindle pitch). Throttle: JKK60-10-P-150-A1-F4-C-M (10 mm spindle pitch), see note below | 1 | [JLC link](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-actuators--kk60-series) | [Stepperonline link](https://www.omc-stepperonline.com/de/lkn60-kk-serie-kugelgewindetrieb-linearmodul-maximale-horizontale-vertikale-nutzlast-30kg-10kg-hub-60mm-lkn60-23dl050-060?tracking=6721c5865911c) | [Attach servo to rail](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-servo-to-rail) |
| **Option B:** 8 mm to 8 mm coupler | | 1 | [link](https://amzn.to/4qbL1CH) | [link](https://s.click.aliexpress.com/e/_c3kPwW8h) | [Attach coupler to servo](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-8mm-to-8mm-coupler-to-servo) |
| 3060 aluminium extrusion | 400 mm | 1 | [link](https://amzn.to/4aPx3Sj) | [link](https://s.click.aliexpress.com/e/_c39XbifP) | [Mount rail to 3060 profile](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-rail-to-3060-profile) |
| 608‑ZZ bearing | | 2 | [link](https://amzn.to/4pH0pak) | [link](https://s.click.aliexpress.com/e/_c4nGMZR7) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |
| Screw bearing | JS695-13-5C3L8M6 | 2 | | [link](https://s.click.aliexpress.com/e/_c41E25K1) | [Attach pedal arm to 3060](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-pedal-arm-to-3060-extrusion) |
| M8×45 mm threaded rod | | 2 | [link](https://amzn.to/48Iyq48) | [link](https://s.click.aliexpress.com/e/_c35xCCtj) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |
| PTFE (Teflon) tape | reduces play between rod and bearing | 1 | [link](https://amzn.to/3KzmUPj) | [link](https://s.click.aliexpress.com/e/_c3bH4vVB) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |

> [!NOTE]
> **Servo selection**
> - The shorter version ("130S") is preferred.
> - If the longer version ("130") is cheaper, buy it and cut the motor shaft to the appropriate length with a metal handsaw.
> - Alternatively, the 180S servo is a bit stronger and not sold out that often.

> [!NOTE]
> **Rail selection**
> - The brake uses a 5 mm spindle pitch for more force.
> - The throttle uses a 10 mm spindle pitch for faster movement.
> - The [pedal configs](../../FinalizingSoftware/README.md#pedal-configs) are set up for these spindle pitches. If you use a different rail, adjust the spindle pitch in the plugin.

### 🔩 Screws, Nuts and Washers
| Part | Info | Quantity | Primary link | Secondary link | Used in |
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| M2.5×6 mm countersunk screw | | 4 | [link](https://amzn.to/3MEZUyP) | [link](https://s.click.aliexpress.com/e/_c3uZ3z3F) | [Rail side covers](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#rail-side-covers) |
| M4×16 mm cylinder head screw | | 4 | [link](https://amzn.to/4q5GSQA) | [link](https://s.click.aliexpress.com/e/_c3bxyxud) | [Attach servo to rail](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-servo-to-rail) |
| M3×15 mm cylinder head screw | | 2 | | | [Attach PCB](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-pcb) |
| M5×20 mm cylinder head screw | 4 rail to 3060, 6 side guards | 10 | [link](https://amzn.to/4j8jHD6) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) | [Mount rail to 3060 profile](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-rail-to-3060-profile), [Side guards](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#side-guards) |
| M5×25 mm cylinder head screw | | 4 | [link](https://amzn.to/4s0sBpY) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) | [Loadcell arm to sled](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-to-sled) |
| M5×30 mm cylinder head screw | | 2 | [link](https://amzn.to/4s0iC40) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) | [Faceplate to pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#faceplate-to-pedal-arm) |
| M5×40 mm cylinder head screw | | 4 | [link](https://amzn.to/3MwzAqK) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) | [Loadcell to pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-to-pedal-arm) |
| M8×16 mm cylinder head screw | | 2 | [link](https://amzn.to/4j2gTaD) | [link](https://s.click.aliexpress.com/e/_c30VmPrT) | [Loadcell arm assembly](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#loadcell-arm-assembly) |
| Screw 3.5×30 mm | increases layer bonding | 6 | [link](https://amzn.to/3Xv7Wwl) | [link](https://s.click.aliexpress.com/e/_c4py0Uu1) | [Prepare pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#prepare-pedal-arm) |
| Screw 3.5×20 mm | increases layer bonding | 2 | [link](https://amzn.to/4nTd0p1) | [link](https://s.click.aliexpress.com/e/_c4py0Uu1) | [Prepare pedal arm](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#prepare-pedal-arm) |
| M6×12×1.6 mm flat washer | | 2 | [link](https://amzn.to/3MFFq98) | [link](https://s.click.aliexpress.com/e/_c3Yqn9LL) | [Attach pedal arm to 3060](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-pedal-arm-to-3060-extrusion) |
| 3030 M5 spring ball nut | | 4 | [link](https://amzn.to/4qffsbd) | [link](https://s.click.aliexpress.com/e/_c38nyFEZ) | [Mount rail to 3060 profile](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#mount-rail-to-3060-profile) |
| 3030 M6 spring ball nut | | 2 | [link](https://amzn.to/4pPvLeT) | [link](https://s.click.aliexpress.com/e/_c38nyFEZ) | [Attach pedal arm to 3060](../../MechanicalDesign_11_20215/Build/Assembly_PedalArm.md#attach-pedal-arm-to-3060-extrusion) |

### 🧵 Filament and Tools
| Part | Info | Quantity | Primary link | Secondary link |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| PETG‑CF filament | stiff parts with good layer bonding | 1 spool | [link](https://amzn.eu/d/00g90wIk) | |
| TPE 83A filament | load cell arm adapters, absorbs noise and vibration | 1 spool | [link](https://amzn.to/4oZeoHs) | |
| Countersink set | removes material for countersunk screws | 1 | [link](https://amzn.to/43wEfi0) | [link](https://s.click.aliexpress.com/e/_c3yAJXfL) |
