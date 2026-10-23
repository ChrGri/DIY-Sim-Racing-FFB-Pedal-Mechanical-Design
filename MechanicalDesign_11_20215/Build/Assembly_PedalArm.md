# 🦶 Mechanical Assembly: Pedal Arm

> [!NOTE]
> This guide is provided exclusively for scientific and educational purposes. It is not intended for commercial use. Building and using the device is at your own risk. No warranty is given for accuracy, completeness, or safety; illegal or dangerous applications are expressly not intended or recommended. Parts lists are provided below so results can be reproduced for documentation and research purposes.

All parts of this guide are summarized in the [mechanical BOM](../../BOM/Mechanics/README.md). The tables in each step list the parts needed for that step.

## 📑 Table of Contents
1. [Overview & Design Choices](#overview)
2. [CAD & STL Files](#cad-stl-files)
3. [Print Settings](#print-settings)
4. [Assembly Steps](#assembly-steps)
   1. [Loadcell Arm Assembly](#loadcell-arm-assembly)
   2. [Mount iSV57 Servo to Rail](#mount-isv57-servo-to-rail)
   3. [Mount Rail to 3060 Profile](#mount-rail-to-3060-profile)
   4. [Prepare Pedal Arm](#prepare-pedal-arm)
   5. [Side Guards](#side-guards)
   6. [Faceplate to Pedal Arm](#faceplate-to-pedal-arm)
   7. [Loadcell to Pedal Arm](#loadcell-to-pedal-arm)
   8. [Attach Pedal Arm to 3060 Extrusion](#attach-pedal-arm-to-3060-extrusion)
   9. [Loadcell Arm to Sled](#loadcell-arm-to-sled)
   10. [Rail Side Covers](#rail-side-covers)
   11. [Attach 3060 Cover](#attach-3060-cover)
   12. [Attach PCB](#attach-pcb)

---

<a id="overview"></a>
## 💡 Overview & Design Choices

### Motivation
Originally, I built my DIY FFB pedal from metal parts. After using it for some time, I became curious whether I could create a mechanical design that is mostly 3D‑printed while remaining rigid enough to withstand the heavy loads occurring in sim racing. Furthermore, I wanted to reduce the component weight, aiming for a positive impact on pedal response time. This repository documents that journey.

The 3D‑printed design has been in use since 07/2024 and shows no signs of wear in my setup.

### Problem
Metal is typically much stronger than plastic, and FDM 3D‑printed parts are generally weaker than injection‑molded counterparts.

### Solution
Create a mechanical design that takes into account the weaknesses of FDM 3D‑printed pedal parts and reinforces typical weak points:
* **Load cell joint height:** To minimize torsional forces on the vertical pedal arms during activation, the upper load cell joint is positioned at a similar height as the center of the pedal faceplate. A deeper analysis of the pedal kinematics can be found [here](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal/wiki/Pedal-kinematic).
* **Wide pedal arm:** The pedal arm has additional width to reduce flex when force is applied off‑center.
* **3060 base plate:** A 3060 aluminum extrusion allows direct screw‑on attachment of the linear rail guide and flexible mounting to the sim rig.

---

<a id="cad-stl-files"></a>
## 📐 CAD & STL Files
<img src="Images/DiyPedalAssemblyV3_dilatation_v19.png" width="400"> <br>

The CAD model of the design can be found [here](CAD/DiyPedalAssemblyV3_dilatation%20v20.f3z). The STL files are linked in the assembly steps below and in the [mechanical BOM](../../BOM/Mechanics/README.md).

---

<a id="print-settings"></a>
## 🖨️ Print Settings
| Material | Used for | Settings |
| :--- | :--- | :--- |
| [PETG‑CF](https://amzn.eu/d/00g90wIk) | all parts except the load cell arm adapters. The carbon fiber particles make the parts very stiff, and PETG provides good layer bonding while offering better heat resistance than PLA. | 10 perimeters, 10 top/bottom layers, 20% infill, 270 °C hotend, 70 °C bed |
| [TPE 83A](https://amzn.to/4oZeoHs) | load cell arm adapters. Absorbs system noise and vibration. | 4 perimeters, 0 top/bottom layers, 90% infill, 250 °C hotend, 70 °C bed |

---

<a id="assembly-steps"></a>
## 🛠️ Assembly Steps

<a id="loadcell-arm-assembly"></a>
### 1️⃣ Loadcell Arm Assembly
<img src="Images/DSC00228.JPG" width="400"> <br>

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| DYLY‑107 load cell | see [electronics BOM](../../BOM/Electronics/README.md) | 1 | | | |
| Loadcell arm (back) | 3D print | 1 | [Loadcell arm back](STL/LoadcellArm/Loadcell-Arm-Back.stl) | | |
| Loadcell arm (front) | 3D print | 1 | [Loadcell arm front](STL/LoadcellArm/Loadcell-Arm-Front.stl) | | |
| M8×16 mm cylinder head screw | | 2 | | [link](https://amzn.to/4j2gTaD) | [link](https://s.click.aliexpress.com/e/_c30VmPrT) |
| 608‑ZZ bearing | | 2 | | [link](https://amzn.to/4pH0pak) | [link](https://s.click.aliexpress.com/e/_c4nGMZR7) |
| M8×45 mm threaded rod | | 2 | | [link](https://amzn.to/48Iyq48) | [link](https://s.click.aliexpress.com/e/_c35xCCtj) |
| PTFE (Teflon) tape | To reduce play between rod and bearing | 1 | | [link](https://amzn.to/3KzmUPj) | [link](https://s.click.aliexpress.com/e/_c3bH4vVB) |

<a id="mount-isv57-servo-to-rail"></a>
### 2️⃣ Mount iSV57 Servo to Rail

> [!TIP]
> Servo, rail and coupler are also available as a [hardware bundle from StepperOnline](https://www.omc-stepperonline.com/de/hardware-paket-fuer-diy-aktivpedal-von-chris-empfohlen-von-l-atelier-mit-isv57t-130s-lkn60-23dl060-060-st-rc07-act-pdl?tracking=6721c5865911c) (iSV57T-130S, LKN60 rail, coupler). With the bundle, you don't need to buy the coupler and the rail below separately.

<a id="attach-8mm-to-8mm-coupler-to-servo"></a>
#### Attach 8mm-to-8mm Coupler to Servo
<img src="Images/DSC00213.JPG" width="400"> <br>

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| 8 mm to 8 mm coupler | | 1 | | [link](https://amzn.to/4qbL1CH) | [link](https://s.click.aliexpress.com/e/_c3kPwW8h) |

Target spacing between the motor flange and the coupler is approximately 5.5 mm.

<a id="attach-servo-to-rail"></a>
#### Attach Servo to Rail
<img src="Images/DSC00215.JPG" width="400"> <br>

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| KK60 linear rail | Brake: JKK60-5-C-150-A1-F4-M (5 mm pitch). Throttle: JKK60-10-P-150-A1-F4-C-M (10 mm pitch) | 1 | | [JLC link](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-actuators--kk60-series) | [Stepperonline link](https://www.omc-stepperonline.com/de/lkn60-kk-serie-kugelgewindetrieb-linearmodul-maximale-horizontale-vertikale-nutzlast-30kg-10kg-hub-60mm-lkn60-23dl050-060?tracking=6721c5865911c) |
| M4×16 mm cylinder head screw | | 4 | | [link](https://amzn.to/4q5GSQA) | [link](https://s.click.aliexpress.com/e/_c3bxyxud) |

<a id="mount-rail-to-3060-profile"></a>
### 3️⃣ Mount Rail to 3060 Profile
| | |
| :---: | :---: |
| <img src="Images/DSC00216.JPG" width="100%"> | <img src="Images/DSC00218.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| 3060 adapter plate | 3D print | 1 | [3060 adapter](STL/3060_adapter/JKK60_to_3060_adapter.stl) | | |
| 3060 extrusion | 400 mm | 1 | | [link](https://amzn.to/4aPx3Sj) | [link](https://s.click.aliexpress.com/e/_c39XbifP) |
| M5×20 mm cylinder head screw | | 4 | | [link](https://amzn.to/4j8jHD6) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) |
| 3030 M5 spring ball nut | | 4 | | [link](https://amzn.to/4qffsbd) | [link](https://s.click.aliexpress.com/e/_c38nyFEZ) |

<a id="prepare-pedal-arm"></a>
### 4️⃣ Prepare Pedal Arm
In order to increase layer strength, screws have been added across the layers.

| | |
| :---: | :---: |
| <img src="Images/DSC00221.JPG" width="100%"> | <img src="Images/DSC00223.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Pedal arm | 3D print | 1 | [Pedal arm](STL/PedalArm/PedalArm.stl) | | |
| Screw 3.5×30 mm | To increase layer bonding | 6 | | [link](https://amzn.to/3Xv7Wwl) | [link](https://s.click.aliexpress.com/e/_c4py0Uu1) |
| Screw 3.5×20 mm | To increase layer bonding | 2 | | [link](https://amzn.to/4nTd0p1) | [link](https://s.click.aliexpress.com/e/_c4py0Uu1) |
| Countersink set | To remove material for countersunk screws | 1 | | [link](https://amzn.to/43wEfi0) | [link](https://s.click.aliexpress.com/e/_c3yAJXfL) |

<a id="side-guards"></a>
### 5️⃣ Side Guards
| | |
| :---: | :---: |
| <img src="Images/DSC00224.JPG" width="100%"> | <img src="Images/DSC00225.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Faceplate | 3D print | 1 | [Faceplate](STL/Faceplate/Faceplate.stl) | | |
| Side guard | 3D print | 2 | [Side guard](STL/Faceplate/SideGuard.stl) | | |
| M5×20 mm cylinder head screw | | 6 | | [link](https://amzn.to/4j8jHD6) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) |

<a id="faceplate-to-pedal-arm"></a>
### 6️⃣ Faceplate to Pedal Arm
| | |
| :---: | :---: |
| <img src="Images/DSC00226.JPG" width="100%"> | <img src="Images/DSC00227.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| M5×30 mm cylinder head screw | | 2 | | [link](https://amzn.to/4s0iC40) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) |

<a id="loadcell-to-pedal-arm"></a>
### 7️⃣ Loadcell to Pedal Arm
| | |
| :---: | :---: |
| <img src="Images/DSC00229.JPG" width="100%"> | <img src="Images/DSC00232.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Upper loadcell arm adapter | 3D print from TPE | 2 | [Upper adapter](STL/UpperLoadcellArmAdapter/8mmUpperAdapter%20v4.stl) | | |
| M5×40 mm cylinder head screw | | 4 | | [link](https://amzn.to/3MwzAqK) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) |

<a id="attach-pedal-arm-to-3060-extrusion"></a>
### 8️⃣ Attach Pedal Arm to 3060 Extrusion
| | | |
| :---: | :---: | :---: |
| <img src="Images/DSC00233.JPG" width="100%"> | <img src="Images/DSC00234.JPG" width="100%"> | <img src="Images/DSC00237.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Screw bearing | JS695-13-5C3L8M6 | 2 | | | [link](https://s.click.aliexpress.com/e/_c41E25K1) |
| M6×12×1.6 mm flat washer | | 2 | | [link](https://amzn.to/3MFFq98) | [link](https://s.click.aliexpress.com/e/_c3Yqn9LL) |
| 3030 M6 spring ball nut | | 2 | | [link](https://amzn.to/4pPvLeT) | [link](https://s.click.aliexpress.com/e/_c38nyFEZ) |

<a id="loadcell-arm-to-sled"></a>
### 9️⃣ Loadcell Arm to Sled
| | |
| :---: | :---: |
| <img src="Images/DSC00238.JPG" width="100%"> | <img src="Images/DSC00240.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Lower loadcell arm adapter | 3D print from TPE | 2 | [Lower adapter](STL/LowerLoadcellArmAdapter/8mmLowerAdapter_v3.stl) | | |
| M5×25 mm cylinder head screw | | 4 | | [link](https://amzn.to/4s0sBpY) | [link](https://s.click.aliexpress.com/e/_c41gbyuD) |

<a id="rail-side-covers"></a>
### 🔟 Rail Side Covers
| | |
| :---: | :---: |
| <img src="Images/DSC00241.JPG" width="100%"> | <img src="Images/DSC00242.JPG" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| Side cover (left) | 3D print | 1 | [Cover left](STL/RailCover/Cover_left.stl) | | |
| Side cover (right) | 3D print | 1 | [Cover right](STL/RailCover/Cover_right.stl) | | |
| M2.5×6 mm countersunk screw | | 4 | | [link](https://amzn.to/3MEZUyP) | [link](https://s.click.aliexpress.com/e/_c3uZ3z3F) |

<a id="attach-3060-cover"></a>
### 1️⃣1️⃣ Attach 3060 Cover
| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| 3060 end cover | 3D print | 2 | [Cover](STL/3060EndCover/3060_cover.stl) | | |

<a id="attach-pcb"></a>
### 1️⃣2️⃣ Attach PCB
The PCB V8 is mounted on the rail side cover with the PCB spacer. The electronics assembly is described [here](../../Soldering_V8).

<img src="../../Soldering_V8/img/pcb_v8_mounted_top.jpg" width="400"> <br>

The PCB V8 case covers the PCB on the rail. It has slots for screwdriver access to the screw terminals, an opening for the USB port and a hole for the status LED. The CAD model can be found [here](../../CAD/JKK_rail_chris/KK60_Cover_PCB_V8.solidcraft) ([STEP](../../CAD/JKK_rail_chris/PCB_Case_V8.step)).

| | |
| :---: | :---: |
| <img src="Images/PCB_Case_V8_render_rail.png" width="100%"> | <img src="Images/PCB_Case_V8_render_closeup.png" width="100%"> |

| Part | Info | Quantity | STL | Primary link | Secondary link |
|--|--|--|--|--|--|
| PCB spacer | 3D print | 1 | [PCB spacer](STL/RailCover/PCBSpacer.stl) | | |
| PCB V8 case | 3D print | 1 | [PCB case V8](../../CAD/JKK_rail_chris/PCB_Case_V8.stl) | | |
| M3×15 mm cylinder head screw | | 2 | | | |
