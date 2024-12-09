# COMPACT PEDAL DESIGN
<img src="https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/blob/main/Compact_design/image/sideview.png" width="500"><br>
This is the design minimizing the pedal width with 2060 profile.<br>
The minimum width of pedal without screw is about 73mm. Total Length is 400mm.<br>

## CAD MODEL
The CAD model is in [HERE](./CAD/FFB_PEDAL_2060_COMPACT_DESIGN.stp).<br>
<img src="https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/blob/main/Compact_design/image/3D.PNG" width="500"><br>
some basic parameter for pedal kinemaatics:<br>
<img src="https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/blob/main/Compact_design/image/3D_BASIC_SKETCH.PNG" width="500"><br>
## BOM
### MANUFACTURE-CNC
The design is including CNC process to create the pedal, you need separate them from 3D CAD in above.
Related file can be found here:
| PART            | DRAWING FILE | MATERIAL| QUANTITY|
:------------------------- |  :------------------------- |  :------------------------- | :------------------------- |
| PIVOT-BRKT-JKK | [LINK](./CAD/pivot-brkt-jkk.pdf)| AL6061 T6 | 1 |
| JKK-2060-ADAPTER | [LINK](./CAD/jkk-adapter-2060.pdf)| AL6061 T6 | 1 |
| SPACER-2-HOLES | NA| AL6061 T6 | 2 |
| 5MM-HOLDER-CAP | NA| AL6061 T6 | 2 |
| 5MM-HOLDER-THREAD | [LINK](./CAD/5mm-holder-thread.pdf)| AL6061 T6 | 2 |
| LC-LINK-NEW | NA| AL7075 T6 | 2 |
### MANUFACTURE-LASER CUT
The design is including laser cut process to create the pedal, you need send the dwg file to laser cut supplier.<br>
Laser-cut manufacture file: [DWG LINK](./CAD/laser-cut-dwg.dwg), [PDF LINK](./CAD/laser-cut-dwg.pdf)<br>
Material can be SUS304 or SUS420J2, if you prefer SUS420J2, please apply heat treatment(HRC36-40) after laser cutting.<br>
Sheet thickness is all 2.3mm.
| PART            |  QUANTITY|
:------------------------- | :------------------------- |
| BRKT-PLATE_WIDE | 1 |
| PEDAL-PLATE-BRKT | 1 |
| PEDAL-ARM-2 |  2 |
| PEDAL-ARM |  4 |
| COLLAR-TWIN-5 |  2 |
| PIVOT-BRKT-SPACER |  2 |
| PIVOT-PLATE |  2 |
Please note after laser cutting, the BRKT-PLATE_WIDE should apply the countersunk by drill.<br>
<img src="https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/blob/main/Compact_design/image/brkt-plate-wide-countersunk.png" width="500"><br>
Please also note, all the connect holes should remove the burrs on the laser starting and end point.
<img src="https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/blob/main/Compact_design/image/burrs-after-laser-cutting.png" width="300"><br>
### PURCHASED PARTS
| PART            |  QUANTITY| LINK|
:------------------------- | :------------------------- | :------------------------- |
| isv57t-130s | 1 |[Stepperonline](https://www.omc-stepperonline.com/nema-23-integrated-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-servo-motor-short-shaft-isv57t-130s) |
| JKK60-5-C-150-A1-F4 Rail | 1 |[JLC](https://jlcmc.com/product/s/B16/BQD-JKK60/steel-linear-actuators--kk60-series?k=JKK60-5-C-150-A1-F4&productModelNumber=JKK60-5-C-150-A1-F4) |
| Stainless Steel Internal Thread Round Head Cylindrical Pin M5x8x35 | 5 |[AliExpress](https://www.aliexpress.com/item/1005006507247840.html) |
| Stainless Steel Internal Thread Round Head Cylindrical Pin M5x8x40 | 1 |[AliExpress](https://www.aliexpress.com/item/1005006507247840.html) |
| Flange Self Lubricating Bearing 8X10X8-15X1.2 | 4 |[AliExpress](https://www.aliexpress.com/item/1005007192252292.html) |
| Flange Self Lubricating Bearing 6X8X8-12X1 | 2 |[AliExpress](https://www.aliexpress.com/item/1005007192252292.html) |
| Stainless Steel (A2-70) Bushing Washer Round Hollow Unthreaded Stand-off Spacer D10xM8 L9mm | 2 |[AliExpress](https://www.aliexpress.com/item/1005008191841149.html)) |
| T-NUT for 20 series profile |  16 | |
| Coupler ID8 OD25 L30 |  1 | |
| M4x16 HEX Screw |  4 | |
| M6x20 HEX Screw |  2 | |
| M5x8 HEX Screw |  4 | |
| M5x10 HEX Screw |  8 | |
| M5x12 HEX Screw |  4 | |
| M5x25 HEX Screw |  4 | |
| M5x35 HEX Screw |  4 | |
| M3x6 HEX Screw |  4 | |
| M8x25 HEX Screw |  2 | |
| M5x20 countersunk Screw |  1 | |
| M5x12 countersunk Screw |  6 | |
| M5 Nut |  1 | |
| M5 Spring Washer |  12 | |
| M5 Washer OD 10 |  12 | |
| M6 Nut |  2 | |
| M6 Spring Washer |  2 | |
| M6 Washer |  2 | |
