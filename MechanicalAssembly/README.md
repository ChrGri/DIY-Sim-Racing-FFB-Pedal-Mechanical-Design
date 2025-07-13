# Motivation
Originally, I built my DIY FFB pedal from metal parts. After using it some time, I got curious whether I can come up with a mechanical design that can be mostly 3d printed and is still rigid enough to withstand the heavy loads accuring in simracing. Furthermore, I wanted to reduce the weight of the components, hopefully seeing a positive impact in the pedal response time. This repo documents the journey of doing that.

The 3D printed design is in use since 07/2024 and doesn't show any signs of wear on my side. 

# Problem
Usually metal is much stronger than plastic and FDM 3d printed parts are weaker than injection molded counterparts. 

# Solution
Create a mechanical design, which takes into account the weaknesses of using FDM 3d printed pedal parts and make them strong at weak spots.

Here is a description of the design choices:

To minimize torsional force on the vertical pedal arms arising through pedal activation, the upper loadcell joint is placed at similar height as the pedal face plate centrum. A deeper analysis of the pedal kinematics can be found [here](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal/wiki/Pedal-kinematic).

Since the upper loadcell joint is located rather high, a SFU1610 spindle with 10mm pitch was selected to allow fast pedal movement. Lower pitch spindle could provide more torque and thus axial force but at the cost of reduced movement speed. Also, the SFU1610 spindle typically emmits less noise and feel smother than 1605 spindles.

The linked linear guide was selected, since it has 30mm M4 bold pattern, which works perfectly fine with the SK12 blocks (32mm spacing, 6mm holes). 100mm stroke length is more than needed. 75mm or even 50mm might be sufficient for some users. Alternatively [these](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-module-kk60-series#selection-tab) linear guides are really nice too and even can be ordered with covers, but are more expensive and use 30mm M5 bold pattern which cannot be used out of the box with the SK12 blocks.

The loadcell joints are from off-the-shelf SK12 shaft supports. They are easy to source, reasonably cheap and therefore a good buyout option. Since they are made from matel, they are likely stronger than your bones.

The beefy loadcell was choosen, as it has a M12 thread, which allows easy connection with the M12 ball joint. [These](https://s.click.aliexpress.com/e/_DFQ8bjx) loadcells are nice too, but would require adapters or redesign of the loadcell arm.


The pedal arms have a certain width to it, to reduce flex, when pedal force is applied off-centre.


As a base-plate a 2080 aluminium extrusion was chooses as it allows easy screw on of attachments as well as easy and flexible attachment to the simrig.


As a FDM material I choosed [PETG-CF](https://amzn.eu/d/00g90wIk), since the carbon fibre particales make the parts supper stiff and the PETG gives good layer bonding while having a better heat resistance than PLA.





# Overview

## Mechanical design
The mechanical design is depicted below <br>
![DiyFfbPedalAssembly v61](https://github.com/user-attachments/assets/f1a54fd9-5949-4dc0-b573-b34a77b52dd7)

![image](https://github.com/user-attachments/assets/be6eea49-dc3b-4902-b109-a31bb7455d06)





## Alterations
Here are some nice upgrades.

### 608zz to KP08 bearing

Instead of the 608zz bearing, one can also buy two [KP08 bearing blocks](https://s.click.aliexpress.com/e/_Dk7Wokt)
and take the bearings from there. The benefit is, that they have a screw flange to remove any play between bearing and axis. An example assembly is depicted below:

![image](https://github.com/user-attachments/assets/c72b740b-9519-4c30-9dbc-9c240b687ce9).


### JKK rail

I'm currently using a [JKK60-10-P-150-A1-F4-C-M](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-module-kk60-series#selection-tab) on my trottle. It's noticeably quieter than the Aliexpress guide. However, it was almost 5 times as expensive inlcuding shipping and taxes. To hold the JKK rail, a 3d printable adapter is used, which can be found [here](CAD/JKK_rail_chris/Jkk_to_2080_adapter v1.stl). 

### DYLY-107 loadcell
Instead of the beefy loacell, smaller ones can be found [here](https://s.click.aliexpress.com/e/_DFQ8bjx). No immediate performance upgrade was observed. 

The thread of the DYLY-107 loadcell is M8. The beefy loadcell has a M12 thread. 

Needed changes:<br>
- Instead of using a SK12, a SK8 block fits well, e.g. [link](https://s.click.aliexpress.com/e/_okuBOQ9)
- balljoints: switch to M8 type balljoints, e.g. [link](https://s.click.aliexpress.com/e/_opZom53)
- The remaining M12 rods have to be exchanged by M8 versions.





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
| [PCB Spacer](STL/PcbSpacer_v1.stl)  | 2  | yes |
| [PedalSideGuard](STL/PedalSideGuard.stl)  | 1  | no |
| [V5 PCB case lower part](CAD/PcbV5case/V5PcbCaseLowerPart.stl)  | 1  | no |
| [V5 PCB case upper part](CAD/PcbV5case/V5PcbCaseUpperPart.stl)  | 1  | no |


To close the 2080 extrusion front/back, the following part was printed twice: <br>
[2080 profile cap](https://makerworld.com/models/209499) 


To cover the PSU channels, thr following thing was used (recommended to print at 101% scale, since it was designed with 0% tolerance): <br>
https://www.thingiverse.com/thing:5158578

An adapter to mount the PSU to 4040/4080 aluminium extrusions can be found here: <br>
[STL](STL/PSU/LRS_Holder.stl) <br>
[CAD](CAD/PSU/LRS_Holder.f3d)

It requires the following screws: <br>
4x M4x8mm <br>
2x M5x15mm <br> 
2x M5 t-nut for 4040 profile <br>


# Print settings
I printed with 10 perimeters, 10 top/bottom layers, 20% infill. 270°C hotend temperature, 70°C heated bed temperature.


# Assembly instructions

Mount CNC guide to 2080 profile with:<br>
4x M4x10mm <br>
4x M5x25mm <br>
2x printed "CncModuleHolder" <br>
2x printed "CncModuleHolderLeft" <br>

Mount pedal plate to pedal arms: <br>
8x M5x30mm <br>
2x SK12 <br>

Mount 608zz adapter to 2080 profile: <br>
2x printed "608zzHolder" <br>
2x 608zz bearing <br>
M8x100 rod <br>
4x M5x10mm


Mount SK12 to linear guide:<br>
4x M4x15mm<br>
4x M4 washer<br>
2x SK12<br>

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


# CAD resources
Linear guide <br>
https://grabcad.com/library/sgx-linear-module-1

608zz <br>
https://grabcad.com/library/608-skate-board-bearing-1

iSV57 <br>
https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s

SK12 <br>
https://grabcad.com/library/sk08-shaft-support-1

2080 <br>
https://grabcad.com/library/2080-aluminium-extrusion-european-standard-t6-1

M12 female rod end <br>
https://grabcad.com/library/female-rod-end-m12-1

Loadcell  <br>
https://grabcad.com/library/m12-threaded-s-type-tension-compression-load-cell-1000kg-1











