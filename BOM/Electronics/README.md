# BOM
Given prices are just indicators. Sellers regularly offer discounted prices, e.g. I paid for the iSV57 60€, for the linear rail 46€.

Disclosure: Some of the links below are affiliate links, which means we may receive a commission at no cost to you if you make a purchase. By using the provided links, you help me buy tools or hardware for further investigations.

## Electronics:

Apart from the mechanical parts, more electronical parts have to be ordered. Please conduct the [software/electronics](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal) repo and the discord for help first, to see if electronic parts are still up to date. 

### Generic parts:
| Part  | Info | Quantity | Price | Primary link | Secondary link | 
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| iSV57T-130S  | shorter version ("130s") is prefered. If the longer version ("130") is cheaper, buy this and cut the motor shaft to appropriate length with a metal handsaw. Alternatively the 180s servo is a bit stronger and not selled out that often. | 1 piece  | 90€ | [130s link](https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-130w-3000rpm-0-45nm-63-73oz-in-20-50vdc-buerstenloser-dc-servomotor-kurze-welle-isv57t-130s?tracking=6721c5865911c) | [180s link](https://www.omc-stepperonline.com/de/nema-23-integrierter-easy-servo-motor-180w-3000rpm-0-6nm-84-98oz-in-20-50vdc-servomotor-kurze-welle-isv57t-180s?tracking=6721c5865911c)|
| PSU | 1 PSU can power multiple pedals (2 at least) | 1 piece | 25€ | [link](https://www.omc-stepperonline.com/de/lrs-350-36-mean-well-350w-36vdc-9-7a-115-230vac-geschlossenes-schaltnetzteil-lrs-350-36?tracking=6721c5865911c) | |
| DYLY‑107 load cell | 50 kg, good signal‑to‑noise ratio | 1 | 50€| [link](https://amzn.to/4ayAk7B) | [link](https://s.click.aliexpress.com/e/_c4c2i6k5)|
| Servo debug port connector  | Female, 5P | 1 piece  | 1€ | [link](https://amzn.to/4uXvVTZ) | [link](https://s.click.aliexpress.com/e/_oCbioHZ) | 




### Control PCB: <br>
The components for the V6 PCB are listed below. 

| Part  | Info | Quantity | Price | Amazon link | Aliexpress link | 
| ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| Control PCB | Ordered from JLCPCB | 1 unit per pedal | 8€ | [link](../Wiring/PcbV6/DiyFfbPedalPcbV6.zip) | |
| ESP32 S3 waveshare  | 8MB-Not Soldered | 1 | 13€ | [link](https://amzn.to/3CbEBAg) | [link](https://s.click.aliexpress.com/e/_c3Dl2Mwt) |
| ADS1220 |  | 1 unit per pedal | 1€ | [link](https://amzn.to/4eMUyLL) | [link](https://s.click.aliexpress.com/e/_c3NqYwqv) |
| SP2323  |  Single channel 20x16 | 1 | 1€ | [link](https://amzn.to/4e1xEBK) | [link](https://s.click.aliexpress.com/e/_c3BQLhi9) |
| SR5100 Schottky diode | |  1 diode per pedal | 1€ | [link](https://amzn.to/3CmN8jR)| [link](https://s.click.aliexpress.com/e/_DdrrsrJ) |
| FR120N mosfet | 100V | 1 per pedal | 1€ |[link](https://amzn.to/40MX27z) | [link](https://s.click.aliexpress.com/e/_oEP6IpR)|
| 8 or 10 5W resistor | select 10R or 8R | 1 per pedal | 1€ | [link](https://amzn.to/4ujXg1v)| [link](https://s.click.aliexpress.com/e/_c3Zg1NXJ)|
| Wire (AWG 18)  | power wire | 0.2m | 5€ | [link](https://amzn.to/4htGLtR) | [link](https://s.click.aliexpress.com/e/_oke6LFx) |
| Wire (AWG 30)  | to connect the control electronics | 0.2m | 5€ | [link](https://amzn.to/4geYNz0) | [link](https://s.click.aliexpress.com/e/_olWGFI1) |
| 2.54mm pitch screw terminals | 5 pin (2pin + 3pin) for loadcell to board | 1 per pedal | 6€| [link](https://amzn.eu/d/5S0YVBn) | [link](https://s.click.aliexpress.com/e/_c3qY4kDr) |
| XT30 connector angled | | 1 male connector per pedal | | [link](https://amzn.to/4xkNmQ4) | [link](https://s.click.aliexpress.com/e/_c4a68ig9)|
| Pin header | optionally, select female | | 1€| [link](https://amzn.to/4hySFCT) | [link](https://s.click.aliexpress.com/e/_ooJnkBP)|

