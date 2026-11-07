# 🔧 Build Instructions — 3D Printed FFB Pedal

Step-by-step assembly of the 3D printed pedal, from the loose parts to the finished pedal. Each step adds one group of parts, and the renders show exactly where every screw and nut goes.

<p align="center">
  <img src="Images/build/overview.png" alt="Finished 3D printed FFB pedal" width="75%">
</p>

The pictures come from the CAD assembly. Exploded views show the order in which the parts go together, and section views show how a screw seats inside the parts. Photos of a real build follow at the end of the steps. Purchase links are in the [mechanical BOM](../../BOM/Mechanics/README.md).

> [!NOTE]
> This guide is provided exclusively for scientific and educational purposes. It is not intended for commercial use. Building and using the device is at your own risk. No warranty is given for accuracy, completeness, or safety; illegal or dangerous applications are expressly not intended or recommended.

---

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

A statics and FEA analysis of the pedal arm (support forces, bending moment, stress plots and safety factors) is available [here](https://chrgri.github.io/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/pedal-arm-analysis.html). The source file is [docs/pedal-arm-analysis.html](../../docs/pedal-arm-analysis.html).

---

## 📁 Design Files

| Path | Content |
| :--- | :--- |
| [`CAD/DiyPedalAssemblyV3_BuildManual.sc`](CAD/DiyPedalAssemblyV3_BuildManual.sc) | SolidCraft assembly used for the renders in this guide, including all screws and nuts |
| [`CAD/DiyPedalAssemblyV3_dilatation.step`](CAD/DiyPedalAssemblyV3_dilatation.step) | STEP export of the pedal assembly |
| [`CAD/DiyPedalAssemblyV3_dilatation v20.f3z`](CAD/DiyPedalAssemblyV3_dilatation%20v20.f3z) | Fusion 360 source of the pedal assembly |
| [`STL/`](STL/) | All printed parts, sorted into one folder per part |

---

## 🧭 Layout

* **Base:** one 3060 aluminium extrusion, 400 mm long. It lies flat with the 60 mm side up.
* **Linear rail:** a KK60 rail on a printed adapter plate at the rear of the extrusion.
* **Servo:** an iSV57T on the front of the rail, connected to the spindle with a coupler.
* **Pedal arm:** turns on two screw bearings at the front of the extrusion.
* **Faceplate:** screwed to the top of the pedal arm, with a side guard on each side.
* **Load cell arm:** a DYLY-107 load cell between two printed arm halves, with a 608 bearing at each end. It connects the pedal arm to the sled of the rail.
* **Load cell arm adapters:** four parts printed from TPE hold the M8 rods of the load cell arm. They absorb noise and vibration.

> [!TIP]
> "Front" in this guide is the end of the extrusion with the pedal arm. "Rear" is the opposite end. In the renders, **orange** parts are printed from PETG‑CF, **teal** parts are printed from TPE, **brass** parts are spring nuts and **steel** parts are screws, rods and washers. The screws and nuts are simplified models.

---

## 🖨️ Printed Parts

| Part | File | Material | Qty |
| :--- | :--- | :--- | :---: |
| Pedal arm | [`PedalArm.stl`](STL/PedalArm/PedalArm.stl) | PETG‑CF | 1 |
| Faceplate | [`Faceplate.stl`](STL/Faceplate/Faceplate.stl) | PETG‑CF | 1 |
| Side guard | [`SideGuard.stl`](STL/Faceplate/SideGuard.stl) | PETG‑CF | 2 |
| Load cell arm, front | [`Loadcell-Arm-Front.stl`](STL/LoadcellArm/Loadcell-Arm-Front.stl) | PETG‑CF | 1 |
| Load cell arm, back | [`Loadcell-Arm-Back.stl`](STL/LoadcellArm/Loadcell-Arm-Back.stl) | PETG‑CF | 1 |
| Rail adapter plate | [`JKK60_to_3060_adapter.stl`](STL/3060_adapter/JKK60_to_3060_adapter.stl) | PETG‑CF | 1 |
| Rail side cover, left | [`Cover_left.stl`](STL/RailCover/Cover_left.stl) | PETG‑CF | 1 |
| Rail side cover, right | [`Cover_right.stl`](STL/RailCover/Cover_right.stl) | PETG‑CF | 1 |
| Extrusion end cover | [`3060_cover.stl`](STL/3060EndCover/3060_cover.stl) | PETG‑CF | 2 |
| Upper load cell arm adapter | [`8mmUpperAdapter v4.stl`](STL/UpperLoadcellArmAdapter/8mmUpperAdapter%20v4.stl) | TPE 83A | 2 |
| Lower load cell arm adapter | [`8mmLowerAdapter_v3.stl`](STL/LowerLoadcellArmAdapter/8mmLowerAdapter_v3.stl) | TPE 83A | 2 |
| PCB spacer | [`PCBSpacer.stl`](STL/RailCover/PCBSpacer.stl) | PETG‑CF | 1 |
| PCB V8 case | [`PCB_Case_V8.stl`](../../CAD/JKK_rail_chris/PCB_Case_V8.stl) | PETG‑CF | 1 |

---

<a id="print-settings"></a>
## 🖨️ Print Settings
| Material | Used for | Settings |
| :--- | :--- | :--- |
| [PETG‑CF](https://link.amazon/B04hdXFsW) | all parts except the load cell arm adapters. The carbon fiber particles make the parts very stiff, and PETG provides good layer bonding while offering better heat resistance than PLA. | 10 perimeters, 10 top/bottom layers, 20% infill, 270 °C hotend, 70 °C bed |
| [TPE 83A](https://amzn.to/4oZeoHs) | load cell arm adapters. Absorbs system noise and vibration. | 4 perimeters, 0 top/bottom layers, 90% infill, 250 °C hotend, 70 °C bed |

---

## 🔩 Screws, Nuts and Hardware

<p align="center">
  <img src="Images/build/fasteners.png" alt="Screws and nuts from left to right: M5x20, M5x25, M5x30, M5x40, M4x16, 3.5x30, 3.5x20, M2.5x6, M5 spring nut, M6 spring nut" width="100%">
</p>

From left to right in the picture:

| Part | Qty | Step |
| :--- | :---: | :--- |
| M5×20 cylinder head screw | 10 | 4× Step 3, 6× Step 5 |
| M5×25 cylinder head screw | 4 | Step 9 |
| M5×30 cylinder head screw | 2 | Step 6 |
| M5×40 cylinder head screw | 4 | Step 7 |
| M4×16 cylinder head screw | 4 | Step 2 |
| Screw 3.5×30 | 6 | Step 4 |
| Screw 3.5×20 | 2 | Step 4 |
| M2.5×6 countersunk screw | 4 | Step 10 |
| 3030 M5 spring ball nut | 4 | Step 3 |
| 3030 M6 spring ball nut | 2 | Step 8 |

Also needed:

| Part | Qty | Step |
| :--- | :---: | :--- |
| M8×16 cylinder head screw | 2 | Step 1 |
| M8×45 threaded rod | 2 | Step 1 |
| 608‑ZZ bearing | 2 | Step 1 |
| PTFE tape | 1 | Step 1 |
| Screw bearing JS695-13-5C3L8M6 | 2 | Step 8 |
| M6×12×1.6 flat washer | 2 | Step 8 |
| M3×15 cylinder head screw | 2 | Step 12 |

---

## 🧰 Before You Start

* **Print all parts first.** The settings are in [Print Settings](#print-settings).
* **Spring ball nuts:** a small sprung ball holds the nut in place in the slot, so it does not slide while you fit the part. Slide the nut in from the end of the extrusion.
* **Self-cut threads:** the faceplate has Ø 4.7 mm holes without a thread. The M5 screws cut their own thread into the plastic. Stop turning as soon as the screw is firm, or the thread will strip.
* **Tools:** hex keys for M4, M5 and M8 screws, screwdrivers that match the M2.5 countersunk screws and the 3.5 mm screws (the drive depends on the screws you buy), a countersink, a vice or a flat piece of wood to press in the bearings.

---

<a id="loadcell-arm-assembly"></a>
## Step 1 — Load Cell Arm

<img src="Images/build/step01a.png" alt="Step 1: load cell arm exploded view" width="49%"> <img src="Images/build/step01b.png" alt="Step 1: finished load cell arm" width="49%">

| Parts | Qty |
| :--- | :---: |
| DYLY-107 load cell | 1 |
| `Loadcell-Arm-Front` (printed) | 1 |
| `Loadcell-Arm-Back` (printed) | 1 |
| M8×16 cylinder head screw | 2 |
| 608‑ZZ bearing | 2 |
| M8×45 threaded rod | 2 |
| PTFE tape | 1 |

1. Put the load cell between the two arm halves.
2. Reach through the window in each arm and push one M8×16 screw through the end of the arm. Screw it into the load cell.
3. Press one 608 bearing into the round end of each arm until it stops on the shoulder inside. Both bearings go in from the side with the "DIY FFB Pedal" lettering.
4. Wrap each M8 rod with PTFE tape where it will sit in the bearing. This removes the play between rod and bearing.
5. Push one rod through each bearing. Centre the rod in the arm, so about 14.5 mm stick out on each side.

**Real build:**

<img src="Images/DSC00228.JPG" alt="Step 1: real build" width="49%">

---

<a id="mount-isv57-servo-to-rail"></a>
<a id="attach-8mm-to-8mm-coupler-to-servo"></a>
<a id="attach-servo-to-rail"></a>
## Step 2 — Servo and Rail

<img src="Images/build/step02a.png" alt="Step 2: coupler on the servo shaft" width="49%"> <img src="Images/build/step02b.png" alt="Step 2: servo and rail exploded view" width="49%">

| Parts | Qty |
| :--- | :---: |
| iSV57T-130S servo | 1 |
| KK60 linear rail (brake: JKK60-5-C-150-A1-F4-M, throttle: JKK60-10-P-150-A1-F4-C-M) | 1 |
| 8 mm to 8 mm coupler | 1 |
| M4×16 cylinder head screw | 4 |
| Permanent marker (for example Edding) | 1 |
| Caliper | 1 |

> [!TIP]
> Servo, rail and coupler are also available as a [hardware bundle from StepperOnline](https://www.omc-stepperonline.com/de/hardware-paket-fuer-diy-aktivpedal-von-chris-empfohlen-von-l-atelier-mit-isv57t-130s-lkn60-23dl060-060-st-rc07-act-pdl?tracking=6721c5865911c).

### Coupler Position and Centring

The order below lets the motor line up with the spindle before anything is fully tightened. This keeps side load off the coupler and the bearings.

<img src="Images/DSC00213.JPG" alt="Coupler on the motor shaft with a caliper set to the 5.5 mm spacing" width="49%"> <img src="Images/DSC00215.JPG" alt="Hex key reaching the coupler clamp screw through the window of the rail" width="49%">

1. **Coupler on the motor (left photo):** wipe any oil off the motor shaft and the spindle end. Slide the coupler onto the motor shaft. The target spacing between the motor flange and the coupler is about **5.5 mm**. Check it with a caliper, then tighten the motor-side clamp screw. Hold the hub you are clamping, not the thin centre section of the coupler.
2. **Mark 1:** make the first marker line now (see [Mark the Coupler](#mark-the-coupler)). The motor side cannot be reached once the motor is mounted.
3. **Align the clamp screw:** turn the motor shaft so that the spindle-side clamp screw will point up through the window of the rail, as in the right photo.
4. **Motor to rail (right picture at the top of this step):** push the spindle into the free end of the coupler and bring the servo flange against the rail flange. The centring collar of the motor sits in the recess of the rail flange.
5. **Screw in lightly:** put the four M4×16 screws through the corner holes of the servo flange, from the motor side, and screw them into the rail flange. Only turn them in until they touch, so the motor can still move a little.
6. **Clamp the spindle:** tighten the spindle-side clamp screw through the window.
7. **Let the motor settle:** turn the coupler by hand through a few full turns.
8. **Tighten the motor:** tighten the M4×16 screws crosswise in small steps, and turn the coupler between the steps. If it gets harder to turn after a step, loosen the screws and repeat from point 7.
9. **Check:** turn the coupler by hand. The sled must move along the full rail without binding.
10. **Mark 2:** make the second marker line through the window.

> [!NOTE]
> The coupler in the CAD renders is about 6 mm shorter than the 35 mm coupler in the photos. Use the photo as the reference for the position.

### Mark the Coupler

Marker lines show later whether the coupler has slipped on a shaft. A slipping coupler can show up as a pedal position that drifts over time. Make one straight line across each joint: from the coupler hub, over its end face, onto the shaft.

<img src="Images/build/step02d.png" alt="Two marker lines: coupler to motor shaft and coupler to spindle" width="49%"> <img src="Images/build/step02e.png" alt="The line on the spindle no longer meets the line on the coupler" width="49%">

* **Left picture:** correct. Each line runs across the joint without a step.
* **Right picture:** the spindle has slipped in the coupler, so the two parts of the line no longer meet.

<img src="Images/build/step02f.png" alt="Mark 2 visible through the window of the rail, mark 1 hidden behind the flange" width="60%">

To check the coupler later:

1. Turn the spindle until mark 2 appears in the window, and check that the line is straight.
2. Mark 1 is hidden behind the flange. If mark 2 is fine but the pedal position still drifts, take the motor off and check mark 1.
3. If a line has a step, loosen the clamp screw, align the line, and tighten the clamp screw again.

---

<a id="mount-rail-to-3060-profile"></a>
## Step 3 — Rail to 3060 Extrusion

<img src="Images/build/step03a.png" alt="Step 3: rail, adapter plate and nuts exploded view" width="49%"> <img src="Images/build/step03b.png" alt="Step 3: rail mounted on the extrusion" width="49%">

| Parts | Qty |
| :--- | :---: |
| 3060 extrusion, 400 mm | 1 |
| `JKK60_to_3060_adapter` (printed) | 1 |
| 3030 M5 spring ball nut | 4 |
| M5×20 cylinder head screw | 4 |

The stack from bottom to top is **extrusion → nut → adapter plate → rail → screw**.

1. Slide four M5 nuts into the two slots on the 60 mm side of the extrusion, two in each slot. Measured from the front end of the extrusion, the nut centres sit at 250 mm and 350 mm.
2. Lay the adapter plate on the extrusion and put the rail on the plate. The servo points towards the front end.
3. Turn the coupler by hand until the sled sits in the middle of the rail. The four mounting holes are in the rail floor, and this position keeps the sled clear of all of them.
4. Drop an M5×20 screw into each counterbored hole in the rail. It passes through the rail floor and the plate into the nut.
5. Tighten all four screws crosswise.

<p align="center">
  <img src="Images/build/step03c.png" alt="Step 3: section through the rail mounting screws" width="70%">
</p>

The section shows the correct seating: the screw head rests inside the rail, and the nut sits in the T-slot with its ball facing the slot opening.

**Real build:**

<img src="Images/DSC00216.JPG" alt="Step 3: real build" width="49%"> <img src="Images/DSC00218.JPG" alt="Step 3: real build" width="49%">

---

<a id="prepare-pedal-arm"></a>
## Step 4 — Prepare the Pedal Arm

<img src="Images/build/step04a.png" alt="Step 4: screws across the layers of the pedal arm" width="60%">

| Parts | Qty |
| :--- | :---: |
| `PedalArm` (printed) | 1 |
| Screw 3.5×30 | 6 |
| Screw 3.5×20 | 2 |
| Countersink | 1 |

The screws run across the print layers to increase the strength of the arm. Its legs have four Ø 2.7 mm pilot holes each, on the side that faces the foot.

1. Countersink all eight pilot holes.
2. Screw the two **3.5×20** screws into the lowest pair of holes, next to the pivot holes.
3. Screw the six **3.5×30** screws into the other holes.

The heads end flush with the surface and the tips end at the back of the arm.

**Real build:**

<img src="Images/DSC00221.JPG" alt="Step 4: real build" width="49%"> <img src="Images/DSC00223.JPG" alt="Step 4: real build" width="49%">

---

<a id="side-guards"></a>
## Step 5 — Side Guards

<img src="Images/build/step05a.png" alt="Step 5: side guards and screws exploded view" width="60%">

| Parts | Qty |
| :--- | :---: |
| `Faceplate` (printed) | 1 |
| `SideGuard` (printed) | 2 |
| M5×20 cylinder head screw | 6 |

1. Hold one side guard against each side of the faceplate.
2. Screw three M5×20 screws through each guard into the faceplate. The screws cut their own thread, so stop as soon as they are firm.

**Real build:**

<img src="Images/DSC00224.JPG" alt="Step 5: real build" width="49%"> <img src="Images/DSC00225.JPG" alt="Step 5: real build" width="49%">

---

<a id="faceplate-to-pedal-arm"></a>
## Step 6 — Faceplate to Pedal Arm

<img src="Images/build/step06a.png" alt="Step 6: faceplate and M5x30 screws, seen from the rear" width="60%">

| Parts | Qty |
| :--- | :---: |
| Faceplate with side guards (from Step 5) | 1 |
| Pedal arm (from Step 4) | 1 |
| M5×30 cylinder head screw | 2 |

1. Hold the faceplate against the front of the pedal arm.
2. From the rear, push one M5×30 screw into each of the two outer counterbored holes. These are the holes below the square opening.
3. Screw them into the faceplate until they are firm.

The four inner holes of the faceplate stay empty for now. The screws of the next step use them.

**Real build:**

<img src="Images/DSC00226.JPG" alt="Step 6: real build" width="49%"> <img src="Images/DSC00227.JPG" alt="Step 6: real build" width="49%">

---

<a id="loadcell-to-pedal-arm"></a>
## Step 7 — Load Cell Arm to Pedal Arm

<img src="Images/build/step07a.png" alt="Step 7: load cell arm and upper adapters exploded view" width="60%">

| Parts | Qty |
| :--- | :---: |
| Load cell arm (from Step 1) | 1 |
| `8mmUpperAdapter` (TPE, printed) | 2 |
| M5×40 cylinder head screw | 4 |

Both adapters are the same part. The second one is turned by 180°.

1. Push one upper adapter onto each side of the upper M8 rod of the load cell arm, on the end with the "DIY FFB Pedal" lettering. The rod goes into the Ø 7.7 mm hole of the adapter.
2. Hold both adapters against the back of the pedal arm. The load cell arm points to the rear.
3. Push the four M5×40 screws through the adapters and the pedal arm. The heads rest in the counterbores of the adapters.
4. Screw them into the faceplate until they are firm.

**Real build:**

<img src="Images/DSC00229.JPG" alt="Step 7: real build" width="49%"> <img src="Images/DSC00232.JPG" alt="Step 7: real build" width="49%">

---

<a id="attach-pedal-arm-to-3060-extrusion"></a>
## Step 8 — Pedal Arm to Extrusion

<img src="Images/build/step08a.png" alt="Step 8: screw bearing from the outside, washer and nut from the inside of the pedal arm" width="49%"> <img src="Images/build/step08b.png" alt="Step 8: top view section through the pivot" width="49%">

| Parts | Qty |
| :--- | :---: |
| Screw bearing JS695-13-5C3L8M6 | 2 |
| M6×12×1.6 flat washer | 2 |
| 3030 M6 spring ball nut | 2 |

The stack from the outside to the inside is **screw bearing → pedal arm → washer → nut** (left picture). The right picture shows the finished pivot, seen from above with the nuts in the side slots of the extrusion.

> [!IMPORTANT]
> Fit all pivot parts to the pedal arm **before** you slide it onto the extrusion. Once the arm is on the extrusion, the washers and nuts can no longer be reached.

1. Push one screw bearing into the hole of each leg from the outside. Its thread points to the inside of the arm.
2. Put one washer onto each thread.
3. Turn one M6 nut onto each thread by a few turns only. Leave a gap between washer and nut, so the edges of the slot fit in between.
4. Turn the nuts so that they line up with the side slots of the extrusion.
5. Slide the arm onto the front end of the extrusion, with the nuts running into the side slots (picture below).
6. Move the arm until the pivot is 5 mm from the end of the extrusion.
7. Tighten both sides evenly. The pedal arm must swing freely without side play.

<img src="Images/build/step08c.png" alt="Step 8: pedal arm with screw bearings, washers and nuts in front of the extrusion" width="60%">

**Real build:**

<img src="Images/DSC00233.JPG" alt="Step 8: real build" width="32%"> <img src="Images/DSC00234.JPG" alt="Step 8: real build" width="32%"> <img src="Images/DSC00237.JPG" alt="Step 8: real build" width="32%">

---

<a id="loadcell-arm-to-sled"></a>
## Step 9 — Load Cell Arm to Sled

<img src="Images/build/step09a.png" alt="Step 9: lower adapters and M5x25 screws above the sled" width="60%">

| Parts | Qty |
| :--- | :---: |
| `8mmLowerAdapter` (TPE, printed) | 2 |
| M5×25 cylinder head screw | 4 |

1. Push one lower adapter onto each side of the lower M8 rod of the load cell arm.
2. Turn the coupler by hand until the sled sits below the adapters.
3. Put the adapters on the sled. Each adapter sits on two threaded holes of the sled.
4. Drop the four M5×25 screws into the adapters and screw them into the sled. The heads rest in the pockets in the top of the adapters.
5. Turn the coupler by hand. The pedal must follow the sled over the full travel without binding.

**Real build:**

<img src="Images/DSC00238.JPG" alt="Step 9: real build" width="49%"> <img src="Images/DSC00240.JPG" alt="Step 9: real build" width="49%">

---

<a id="rail-side-covers"></a>
## Step 10 — Rail Side Covers

<img src="Images/build/step10a.png" alt="Step 10: rail side cover and M2.5 screws" width="60%">

| Parts | Qty |
| :--- | :---: |
| `Cover_left` (printed) | 1 |
| `Cover_right` (printed) | 1 |
| M2.5×6 countersunk screw | 4 |

1. Hold one cover against each side of the rail.
2. Screw two M2.5×6 countersunk screws through each cover into the threaded holes in the side of the rail.

The picture shows the left cover. The right cover is fitted in the same way.

**Real build:**

<img src="Images/DSC00241.JPG" alt="Step 10: real build" width="49%"> <img src="Images/DSC00242.JPG" alt="Step 10: real build" width="49%">

---

<a id="attach-3060-cover"></a>
## Step 11 — Extrusion End Covers

<img src="Images/build/step11a.png" alt="Step 11: both end covers in front of the extrusion" width="60%">

| Parts | Qty |
| :--- | :---: |
| `3060_cover` (printed) | 2 |

Push one cover onto each end of the extrusion.

---

<a id="attach-pcb"></a>
## Step 12 — PCB

<img src="Images/PCB_Case_V8_render_rail.png" alt="Step 12: PCB V8 case on the rail" width="49%"> <img src="Images/PCB_Case_V8_render_closeup.png" alt="Step 12: PCB V8 case close-up" width="49%">

| Parts | Qty |
| :--- | :---: |
| `PCBSpacer` (printed) | 1 |
| PCB V8 case (printed) | 1 |
| M3×15 cylinder head screw | 2 |

The PCB V8 is mounted on the rail side cover with the PCB spacer. The electronics assembly is described in the [PCB V8 guide](../../Soldering_V8).

The PCB V8 case covers the PCB on the rail. It has slots for screwdriver access to the screw terminals, an opening for the USB port and a hole for the status LED. The CAD model can be found [here](../../CAD/JKK_rail_chris/KK60_Cover_PCB_V8.solidcraft) ([STEP](../../CAD/JKK_rail_chris/PCB_Case_V8.step)).

<img src="../../Soldering_V8/img/pcb_v8_mounted_top.jpg" alt="Step 12: PCB V8 mounted on the rail" width="49%">

The mechanical build is finished. Continue with the [electronics assembly](../../Soldering_V8) and the [software setup](../../FinalizingSoftware/README.md).
