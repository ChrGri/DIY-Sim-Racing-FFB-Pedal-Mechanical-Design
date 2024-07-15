# DIY-Sim-Racing-FFB-Pedal-Mechanical-Design


# Motivation
Originally, I built my DIY FFB pedal from metal parts. After using it some time, I wanted to know, whether I can come up with a mechanical design that can be mostly 3d printed and is still rigid enough to withstand the heavy loads accuring in simracing. This repo documents the journey of doing that 

# Problem
Usually metal is much stronger than plastic and FDM 3d printed parts are weaker than injection molded counterparts. 

# Solution
Create a mechanical design, which takes into account the weaknesses of using FDM 3d printed pedal parts. 

Here is a description of the design choices:

To minimize torsional force on the vertical pedal arms arising through pedal activation, the upper loadcell joint is placed at similar height as the pedal face plate centrum.

Since the upper loadcell joint is located rather high, a SFU1610 spindle with 10mm pitch was selected to allow fast pedal movement. Lower pitch spindle could provide more torque and thus axial force but at the cost of reduced movement speed. Also, the SFU1610 spindle typically emmits less noise and feel smother than 1605 spindles.

The loadcell joints are from off-the-shelf SK08 shaft supports. They are easy to source, reasonably cheap and therefore a good buyout option. Since they are made from matel, they are likely stronger than your bones.



The pedal arms have a certain width to it, to reduce flex, when pedal force is applied off-centre.

As a FDM material, I choosed [PETG-CF](https://amzn.eu/d/00g90wIk), since the carbon fibre particales make the parts supper stiff and the PETG gives good layer bonding while having a better heat resistance than PLA.




# Overview

![DiyFfbPedalAssembly v54](https://github.com/user-attachments/assets/7e1d3fea-c27f-4723-a1e8-4d20dbfe8602)





# BOM
4x SK12 <br>
https://amzn.eu/d/074hrmhx

2x 608zz bearing <br>
https://amzn.eu/d/03ZWQDCX

Linear guide with SFU1610, 100mm stroke <br>
https://a.aliexpress.com/_EJWoX55

iSV57T-130S (shorter version is prefered, if the longer version is cheaper, buy this and cut wig metal handsaw) <br>

https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s

2080 x 400mm profile <br>
https://amzn.eu/d/08zlueLh

200kg loadcell <br>
https://amzn.eu/d/0eKiuk71

2x M12 ball rod<br>
https://amzn.eu/d/02ZegheX

M8 threades bar (ca. 100mm length)

M12 (two pieces a ca 40mm + two pieces a ca 80mm)

2x M8 self locking nut

4x M12 nut (regular, non locking)

FDM filament 

Screws/bolds, see assembly instructions

# Assembly instructions

Mount CNC guide to 2080 profile with:<br>
4x M4x10mm <br>
4x M5x25mm <br>
2x printed "CncModuleHolder" <br>
2x printed "CncModuleHolderLeft" <br>

Mount pedal plate to pedal arms: <br>
4x M5x30mm <br>
4x M5x30mm <br>
2x SK08 <br>

Mount 608zz adapter to 2080 profile: <br>
2x printed "608zzHolder" <br>
2x 608zz bearing <br>
M8x100 rod <br>
4x M5x10mm


Mount SK08 to linear guide:<br>
4x M4x20mm<br>
2x SK08<br>

Mount iSV57 to linear guide:<br>
4x M4x15mm




# List of printed parts

2080 profile cap <br>
https://makerworld.com/models/209499

# Print settings
I printed with 5 perimeters, 10 top/bottom layers, 20% infill. 270°C hotend temperature, 70°C heated bed temperature.

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




