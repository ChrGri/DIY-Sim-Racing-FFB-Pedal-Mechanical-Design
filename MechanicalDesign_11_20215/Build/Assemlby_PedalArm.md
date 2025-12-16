
# Important Notice (Disclaimer)
> [!NOTE]
> This guide is provided exclusively for scientific and educational purposes. It is not intended for commercial use. Building and using the device is at your own risk. No warranty is given for accuracy, completeness, or safety; illegal or dangerous applications are expressly not intended or recommended. Parts lists are provided below so results can be reproduced for documentation and research purposes.

# Intriduction 
## Motivation
Originally, I built my DIY FFB pedal from metal parts. After using it some time, I got curious whether I can come up with a mechanical design that can be mostly 3d printed and is still rigid enough to withstand the heavy loads accuring in simracing. Furthermore, I wanted to reduce the weight of the components, hopefully seeing a positive impact in the pedal response time. This repo documents the journey of doing that.

The 3D printed design is in use since 07/2024 and doesn't show any signs of wear on my side.

## Problem
Usually metal is much stronger than plastic and FDM 3d printed parts are weaker than injection molded counterparts.

## Solution
Create a mechanical design, which takes into account the weaknesses of using FDM 3d printed pedal parts and make them strong at weak spots.

To minimize torsional force on the vertical pedal arms arising through pedal activation, the upper loadcell joint is placed at similar height as the pedal face plate centrum. A deeper analysis of the pedal kinematics can be found [here](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal/wiki/Pedal-kinematic).

The pedal arm has a certain width to it, to reduce flex, when pedal force is applied off-centre.

As a base-plate a 3060 aluminium extrusion was chooses as it allows direct screw on attachment of the used linear rail guide and flexible attachmenrt to the simrig.

The 3D printed adapters 


# Table of Contents
1. Overview & Design Choices
2. CAD & STL Files
3. FEM Simulation
4. Print settings
5. Assembly Steps
	- Loadcell Arm Assembly
	- Mount iSV57 Servo to Rail
	- Mount Rail to 3060 Profile
	- Prepare Pedal Arm
	- Side Guards
	- Faceplate to Pedal Arm
	- Loadcell to Pedal Arm
	- Screw Bearing
	- Loadcell Arm to Sled
	- Rail Side Covers
	- Attach PCB



# CAD & STL Files
<img src="Images/DiyPedalAssemblyV3_dilatation_v19.png" width="400"> <br>

The CAD model of the design can be found 
[here](CAD/DiyPedalAssemblyV3_dilatation%20v20.f3z).



# FEM Simulation
TBD.

# Print settings
As a FDM material I choosed [PETG-CF](https://amzn.eu/d/00g90wIk), since the carbon fibre particales make the parts supper stiff and the PETG gives good layer bonding while having a better heat resistance than PLA.
The PETG parts have been printed with 10 perimeters, 10 top/bottom layers, 20% infill. 270°C hotend temperature, 70°C heated bed temperature. 

The 3D printed loadcell arm adapters have been printed from [83A-TPE](https://amzn.to/4oZeoHs), thus they'll absorb system noise and vibration. The TPE parts have been printed with 4 perimeters, 0 top/bottom layers, 90% infill. 250°C hotend temperature, 70°C heated bed temperature. 



# Assembly Steps

## Loadcell Arm Assembly
<img src="Images/DSC00228.JPG" width="400"> <br>

| Design  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
| Loadcell arm (back) | 3D print | 1 |  [Loadcell arm back](STL/Loacell-Arm-Back.stl) | | |
| Loadcell arm (front) | 3D print | 1 | [Loadcell arm back](STL/Loadcell-Arm-Front.stl) |||
| DYLY-107 loadcell | 50 kg has good signal-to-noise ratio | 1| || [link](https://s.click.aliexpress.com/e/_c4c2i6k5)|
| M8x16mm cyclinder head screw | | 2 | |[link](https://amzn.to/4j2gTaD) | [link](https://s.click.aliexpress.com/e/_c30VmPrT) |
| 608 zz bearing | | 2 || [link](https://amzn.to/4pH0pak) | [link](https://s.click.aliexpress.com/e/_c4nGMZR7) |
| M8x45mm threaded rod | | 2 || [link](https://amzn.to/48Iyq48) | [link](https://s.click.aliexpress.com/e/_c35xCCtj) |
| teflon tape | To reduce play between rod and bearing | 1 || [link](https://amzn.to/3KzmUPj) | [link](https://s.click.aliexpress.com/e/_c3bH4vVB) |



## Mount iSV57 Servo to Rail
### Attach 8mm-to-8mm Coupler to Servo
<img src="Images/DSC00213.JPG" width="400"> <br>

| Design  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|8mm to 8mm coupler||1||[link](https://amzn.to/4qbL1CH)|[link](https://s.click.aliexpress.com/e/_c3kPwW8h)|

It was aimed to get roughly 5.5mm space between the motor flange and the coupler.

### Attach Servo to Rail

<img src="Images/DSC00215.JPG" width="400"> <br>

| Design  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|KK 60 rail|JKK60-5-C-150-A1-F4-M|1|| [link](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-actuators--kk60-series) |[link](https://www.omc-stepperonline.com/de/lkn60-kk-serie-kugelgewindetrieb-linearmodul-maximale-horizontale-vertikale-nutzlast-30kg-10kg-hub-60mm-lkn60-23dl050-060?tracking=6721c5865911c)|
| M4x16mm cyclinder head screw ||4||[link](https://amzn.to/4q5GSQA)|[link](https://s.click.aliexpress.com/e/_c3bxyxud)|



## Mount Rail to 3060 Profile
<img src="Images/DSC00216.JPG" width="400"> <br>
<img src="Images/DSC00218.JPG" width="400"> <br>

| Design  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|3060 adapter plate| |1| [3060 adapter](STL\3060_adapter\JKK60_to_3060_adapter.stl)|
| 3060 rail 400mm | | 1 | | [link](https://amzn.to/4aPx3Sj)| [link](https://s.click.aliexpress.com/e/_c39XbifP) |
|M5x20mm cylinder head screws ||4| | [link](https://amzn.to/4j8jHD6)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|
|3030 M5 spring ball nut ||4||[link](https://amzn.to/4qffsbd)| [link](https://s.click.aliexpress.com/e/_c38nyFEZ)|



## Prepare Pedal Arm
In order to increase layer strength, screws have been added across the layers.
<img src="Images/DSC00221.JPG" width="400"> <br>
<img src="Images/DSC00223.JPG" width="400"> <br>

| Product | Info | Quantity | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|
|Screw 3.5mm x 30mm | To increase layer bonding | 6 | [link](https://amzn.to/3Xv7Wwl) |[link](https://s.click.aliexpress.com/e/_c4py0Uu1)|
|Screw 3.5mm x 20mm | To increase layer bonding | 2 | [link](https://amzn.to/4nTd0p1) |[link](https://s.click.aliexpress.com/e/_c4py0Uu1)|
|Countersink set| To remove material to for the sink screws | 1 |  [link](https://amzn.to/43wEfi0) |[link](https://s.click.aliexpress.com/e/_c3yAJXfL)|



## Side Guards
<img src="Images/DSC00224.JPG" width="400"> <br>
<img src="Images/DSC00225.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
| Faceplate ||1|[Faceplate](STL/Faceplate/Faceplate.stl)||
| Sideguards ||2|[Faceplate](STL/Faceplate/SideGuard.stl)||
|M5 x 20mm cylinder head screws ||6| | [link](https://amzn.to/4j8jHD6)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|


## Faceplate to Pedal Arm
<img src="Images/DSC00226.JPG" width="400"> <br>
<img src="Images/DSC00227.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|M5 x 30mm cylinder head screws ||2| | [link](https://amzn.to/4s0iC40)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|


## Loadcell to Pedal Arm
<img src="Images/DSC00229.JPG" width="400"> <br>
<img src="Images/DSC00232.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|Upper loadcell arm adapter | Print from TPE|2|[link](STL/UpperLoadcellArmAdapter/8mmUpperAdapter%20v4.stl)||
|M5 x 40mm cylinder head screws ||4| | [link](https://amzn.to/3MwzAqK)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|




## Attach pedal arm to 3060 extrusion
<img src="Images/DSC00233.JPG" width="400"> <br>
<img src="Images/DSC00234.JPG" width="400"> <br>
<img src="Images/DSC00237.JPG" width="400"> <br>

| Product | Info | Quantity | STL | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
| Screw bearing | JS695-13-5C3L8M6 | 2 | || [link](https://s.click.aliexpress.com/e/_c41E25K1) |
| M6 x 12 x 1.6mm flat washer |  | 2 | | [link](https://amzn.to/3MFFq98)| [link](https://s.click.aliexpress.com/e/_c3Yqn9LL) |
|3030 M6 spring ball nut ||2||[link](https://amzn.to/4pPvLeT)| [link](https://s.click.aliexpress.com/e/_c38nyFEZ)|



## Loadcell Arm to Sled
<img src="Images/DSC00238.JPG" width="400"> <br>
<img src="Images/DSC00240.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|Lower loadcell arm adapter | Print from TPE|2|[link](STL/LowerLoadcellArmAdapter/8mmLowerAdapter_v3.stl)||
|M5 x 25mm cylinder head screws ||4| | [link](https://amzn.to/4s0sBpY)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|



## Rail Side Covers
<img src="Images/DSC00241.JPG" width="400"> <br>
<img src="Images/DSC00242.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
| M2.5 x 6mm countersunk screws||4| | [link](https://amzn.to/3MEZUyP)|[link](https://s.click.aliexpress.com/e/_c3uZ3z3F)|


## Attach 3060 Cover 
| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|Cover||2| [Cover](STL/3060EndCover/3060_cover.stl)|


## Attach PCB
<img src="Images/DSC00243.JPG" width="400"> <br>
<img src="Images/DSC00244.JPG" width="400"> <br>

| Product  | Info | Quantity | STL link | Amazon (affiliate) link | Aliexpress (affiliate) link |
|--|--|--|--|--|--|
|Spacer||2| [Spacer](STL/PcbSpacer/PcbSpacer%20v1.stl)|
|M5 x 20mm cylinder head screws ||2| | [link](https://amzn.to/3MwzAqK)|[link](https://s.click.aliexpress.com/e/_c41gbyuD)|

