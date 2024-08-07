# DIY-Sim-Racing-FFB-Pedal-Mechanical-Design

# Disclaimer
This is a DIY project. Eveything at your own risk!

# Motivation
Originally, I built my DIY FFB pedal from metal parts. After using it some time, I got curious whether I can come up with a mechanical design that can be mostly 3d printed and is still rigid enough to withstand the heavy loads accuring in simracing. Furthermore, I wanted to reduce the weight of the components, hopefully seeing a positive impact in the pedal response time. This repo documents the journey of doing that.

# Problem
Usually metal is much stronger than plastic and FDM 3d printed parts are weaker than injection molded counterparts. 

# Solution
Create a mechanical design, which takes into account the weaknesses of using FDM 3d printed pedal parts and make them strong at weak spots.

Here is a description of the design choices:

To minimize torsional force on the vertical pedal arms arising through pedal activation, the upper loadcell joint is placed at similar height as the pedal face plate centrum. A deeper analysis of the pedal kinematics can be found [here](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal/wiki/Pedal-kinematic).

Since the upper loadcell joint is located rather high, a SFU1610 spindle with 10mm pitch was selected to allow fast pedal movement. Lower pitch spindle could provide more torque and thus axial force but at the cost of reduced movement speed. Also, the SFU1610 spindle typically emmits less noise and feel smother than 1605 spindles.

The linked linear guide was selected, since it has 30mm M4 bold pattern, which works perfectly fine with the SK12 blocks (32mm spacing, 6mm holes). 100mm stroke length is more than needed. 75mm or even 50mm might be sufficient for some users. Alternatively [these](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-module-kk60-series#selection-tab) linear guides are really nice too and even can be ordered with covers, but are more expensive and use 30mm M5 bold pattern which cannot be used out of the box with the SK12 blocks.

The loadcell joints are from off-the-shelf SK12 shaft supports. They are easy to source, reasonably cheap and therefore a good buyout option. Since they are made from matel, they are likely stronger than your bones.

The beefy loadcell was choosen, as it has a M12 thread, which allows easy connection with the M12 ball joint. [These](https://a.aliexpress.com/_Ez2kYuf) loadcells are nice too, but would require adapters or redesign of the loadcell arm.


The pedal arms have a certain width to it, to reduce flex, when pedal force is applied off-centre.


As a base-plate a 2080 aluminium extrusion was chooses as it allows easy screw on of attachments as well as easy and flexible attachment to the simrig.


As a FDM material I choosed [PETG-CF](https://amzn.eu/d/00g90wIk), since the carbon fibre particales make the parts supper stiff and the PETG gives good layer bonding while having a better heat resistance than PLA.





# Overview
![DiyFfbPedalAssembly v61](https://github.com/user-attachments/assets/f1a54fd9-5949-4dc0-b573-b34a77b52dd7)



# BOM
Given prices are just indicators. Sellers regularly offer discounted prices, e.g. I paid for the iSV57 60€, for the linear rail 46€.

Apart from the mechanical parts, more electronical parts have to be ordered. Please conduct the [software/electronics](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal) repo and the discord for help. 

| Part  | Info | Quantity | Price | Amazon link | Aliexpress link | 
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| SK12  | | 4 pieces  | 4,50€ | https://amzn.eu/d/074hrmhx | https://a.aliexpress.com/_EHTevax |
| 608zz bearing  | | 2 pieces  | 5€ | https://amzn.eu/d/0j1mJTMV | https://a.aliexpress.com/_Eyd05UR|
| Linear guide  | SFU1610, 100mm stroke | 1 piece  | 60€ | |https://a.aliexpress.com/_EJWoX55 |
| iSV57T-130S  | shorter version ("130s") is prefered. If the longer version ("130") is cheaper, buy this and cut the motor shaft to appropriate length with a metal handsaw. | 1 piece  | 90€ | https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s | |
PSU | 1 PSU can power multiple pedals | 1 piece | 25€ |https://www.omc-stepperonline.com/de/lrs-350-36-mean-well-350w-36vdc-9-7a-115-230vac-geschlossenes-schaltnetzteil-lrs-350-36 | |
| 2080 profile  | 400mm length | 1 piece  | 15€ | https://amzn.eu/d/08zlueLh | https://a.aliexpress.com/_EwWe0in |
| Loadcell  | 200kg | 1 piece  | 20€ | https://amzn.eu/d/0erHqGqH | https://a.aliexpress.com/_EJwp9Ht |
| M12 ball joint  | All right handed thread | 2 piece  | 11€ | https://amzn.eu/d/02ZegheX | |
| M8 threades rod  |  |  one piece ca. 110mm length | 2€ | local hardware store | https://a.aliexpress.com/_EHIOY4T |
| M12 threades rod  |  | two pieces a 45mm + two pieces a 55mm  | 2€ | local hardware store | https://a.aliexpress.com/_EvmkpLN |
| M8 self locking nut  |  | 2 pieces  | 0,50€ | local hardware store |  |
| M5 t-nut  |  | 8 pieces  | 3€ | https://amzn.eu/d/0e2KYTZu | https://a.aliexpress.com/_EyKq6Mx |
| FDM filament  |  | ca. 300g  | 25€ | https://amzn.eu/d/00g90wIk | |


Srews/bolds:

| Size  | Info | Quantity | Price | Link |
| ------------- | ------------- | ------------- | ------------- | ------------- |
| M4x10mm  | | 8 pieces  | 0,50€ |
| M4x15mm  | | 8 pieces  | 0,50€  |
| M5x10mm  | | 4 pieces  | 0,50€ |
| M5x25mm  | | 4 pieces  | 0,50€ |
| M5x30mm  | | 10 pieces  | 0,50€ |
| M4 washer  | | 4 pieces  | 0,50€ |



# List of printed parts

The print orientation was choosen manually. Support was activated only for the part PedalArmLowerBar.stl.


| Part  | Quantity | Required |
| ------------- | ------------- | ------------- |
| [608zzHolder](STL/608zzHolder.stl)  | 2  | yes |
| [CncModuleHolder](STL/CncModuleHolder.stl)  | 2  | yes |
| [CncModuleHolderLeft](STL/CncModuleHolderLeft.stl)  | 2  | yes |
| [Faceplate](STL/Faceplate.stl)  | 1  | yes |
| [PedalArmLeft](STL/PedalArmLeft.stl)  | 1  | yes |
| [PedalArmRight](STL/PedalArmRight.stl)  | 1  | yes |
| [PedalArmLowerBar](STL/PedalArmLowerBar.stl)  | 1  | yes |
| [PedalArmUpperAdapter](STL/PedalArmUpperAdapter.stl)  | 1  | yes |
| [PedalSideGuard](STL/PedalSideGuard.stl)  | 1  | no |


To close the 2080 extrusion front/back, the following part was printed twice: <br>
[2080 profile cap](https://makerworld.com/models/209499) 


To cover the PSU channels, thr following thing was used: <br>
https://www.thingiverse.com/thing:5158578



# Print settings
I printed with 5 perimeters, 10 top/bottom layers, 20% infill. 270°C hotend temperature, 70°C heated bed temperature.


# Assembly instructions

Mount CNC guide to 2080 profile with:<br>
4x M4x10mm <br>
4x M5x25mm <br>
2x printed "CncModuleHolder" <br>
2x printed "CncModuleHolderLeft" <br>

Mount pedal plate to pedal arms: <br>
8x M5x30mm <br>
2x SK08 <br>

Mount 608zz adapter to 2080 profile: <br>
2x printed "608zzHolder" <br>
2x 608zz bearing <br>
M8x100 rod <br>
4x M5x10mm


Mount SK08 to linear guide:<br>
4x M4x15mm<br>
4x M4 washer<br>
2x SK08<br>

Mount iSV57 to linear guide:<br>
4x M4x15mm


Loadcell: <br>
2x M12x55mm threaded rod <br>
2x M12 nut

Loadcell to SK12: <br>
2x M12x45mm threaded rod


# Tips
To reduce any play in the system, I wrapped some layers of [teflon wrap](https://amzn.eu/d/0cYW6pJp) around the threaded rods and pushed the 608zz bearings and ball rods over it.




# Analysis results
To test the mechanical design, following test were conducted:

## Strength test
To be done! 

Perhaps FEM analysis

## Control loop test
To be done!

Compared to the stainless steel pedal plate, the pedal feels more responsive. Need to verify that by e.g. plotting the closed loop step response here.

Todo:  <br>
1) Weight the parts/pedals.
2) Draw dimensions
3) Capture step respose





# CAD resources
Linear guide <br>
https://grabcad.com/library/sgx-linear-module-1

608zz <br>
https://grabcad.com/library/608-skate-board-bearing-1

iSV57 <br>
https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s

SK08 <br>
https://grabcad.com/library/sk08-shaft-support-1

2080 <br>
https://grabcad.com/library/2080-aluminium-extrusion-european-standard-t6-1

M12 female rod end <br>
https://grabcad.com/library/female-rod-end-m12-1

Loadcell  <br>
https://grabcad.com/library/m12-threaded-s-type-tension-compression-load-cell-1000kg-1



# Issues

## Issue 1: servo slips away
It was once observed, that the servo slipped away under braking, see [video](https://www.youtube.com/live/HW_phDLIBcU?si=4mNCj0IyTrodPuNm&t=2854).

A different [PSU](https://amzn.eu/d/3srstaF) was used as the one linked in the BOM. It is assumed that due to heavy braking the PSU wasn't able to deliver the necessary power output and the servo went into undervoltage protection, this alipping away. 
Its currently beeing tested, whether that is issue is solved by switching the the PSU feom the BOM and what software chnages can mitigate the symptoms.

Updates on this issue will be posted here and almost daily on [youtube](https://youtube.com/@cuttingcorny?si=7AVNgqsLwYK21lRO).



