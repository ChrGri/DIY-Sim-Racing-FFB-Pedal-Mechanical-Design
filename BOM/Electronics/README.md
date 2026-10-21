# 📦 Bill of Materials (BOM)
Given prices are just indicators. Sellers regularly offer discounted prices, e.g. I paid for the iSV57 60€, for the linear rail 46€.

Disclosure: Some of the links below are affiliate links, which means we may receive a commission at no cost to you if you make a purchase. By using the provided links, you help me buy tools or hardware for further investigations.

## 🔌 Electronics

Apart from the mechanical parts, some electronic parts have to be ordered. Please check the [software/electronics](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal) repo and the Discord first, to see if the electronic parts are still up to date.

### 🧩 Generic Parts
The iSV57T servo and the StepperOnline hardware bundle (servo + rail + coupler) are listed in the [mechanical BOM](../Mechanics/README.md#servo-rail-profile-and-bearings).

| Part  | Info | Quantity | Price | Primary link | Secondary link | 
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| PSU | 1 PSU can power multiple pedals (2 at least) | 1 piece | 25€ | [link](https://www.omc-stepperonline.com/de/lrs-350-36-mean-well-350w-36vdc-9-7a-115-230vac-geschlossenes-schaltnetzteil-lrs-350-36?tracking=6721c5865911c) | |
| DYLY‑107 load cell | 50 kg, good signal‑to‑noise ratio | 1 per pedal | 50€| [link](https://amzn.to/4ayAk7B) | [link](https://s.click.aliexpress.com/e/_c4c2i6k5)|
| Servo debug port connector  | Female, 5P | 1 per pedal  | 1€ | [link](https://amzn.to/4uXvVTZ) | [link](https://s.click.aliexpress.com/e/_oCbioHZ) | 

### 🖥️ Control PCB V8
The components for the V8 PCB are listed below. The V8 PCB has no power circuit, the servo is supplied by the [hardware brake resistor module](#-hardware-brake-resistor-module) instead.

| Part  | Info | Quantity | Price | Primary link | Secondary link | 
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Control PCB V8 | Ordered from JLCPCB | 1 per pedal | 8€ | [link](../../Wiring/PcbV8/DiyFfbPedalPcbV8.zip) | |
| ESP32 S3 mini |  | 1 per pedal | 13€ | [link](https://amzn.to/4pjNnjq) | [link](https://s.click.aliexpress.com/e/_c3IpHQ4P) |
| ADS1220 |  | 1 per pedal | 1€ | [link](https://amzn.to/4eMUyLL) | [link](https://s.click.aliexpress.com/e/_c3NqYwqv) |
| SP3232 (MAX3232) module | TTL ↔ RS232, single channel 20x16 | 1 per pedal | 1€ | [link](https://amzn.to/4e1xEBK) | [link](https://s.click.aliexpress.com/e/_c3BQLhi9) |
| Wire (AWG 30)  | servo control (6 wires) and RS232 (3 wires) | 1m | 5€ | [link](https://amzn.to/4geYNz0) | [link](https://s.click.aliexpress.com/e/_olWGFI1) |
| 2.54mm pitch screw terminals | 5 pin load cell, 3 pin RS232, 6 pin PUL/DIR/ALM (can be combined from 2 and 3 pin blocks) | 1 set per pedal | 6€| [link](https://amzn.eu/d/5S0YVBn) | [link](https://s.click.aliexpress.com/e/_c3qY4kDr) |
| Pin header | optionally, select female | | 1€| [link](https://amzn.to/4hySFCT) | [link](https://s.click.aliexpress.com/e/_ooJnkBP)|
| 100nF ceramic capacitor | Select 104 (0.1uF) | 1 per pedal| 1.35€ per 100PC| [link](https://amzn.to/4fiyDwU) | [link](https://s.click.aliexpress.com/e/_c2yY8p15)|
| 100Ohm resistor | Select 100 Ohm or 100R 1/4 W| 2 per pedal | 1€| [link](https://amzn.to/4yAbtLk) | [link](https://s.click.aliexpress.com/e/_c3TUM20f)|
| Wire ferrules | optional, for the screw terminals | 9 per pedal | | | |
| USB-C cable | ESP32 S3 to PC, also powers the PCB | 1 per pedal | | | |

### 🔥 Hardware Brake Resistor Module
One module per rig supplies all servos. All parts are listed in the [Diy_Hardware_BrakeResistor](https://github.com/ChrGri/Diy_Hardware_BrakeResistor#-bill-of-materials-bom) repository.
