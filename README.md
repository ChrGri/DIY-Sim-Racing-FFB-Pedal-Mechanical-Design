# DIY-Sim-Racing-FFB-Pedal-Mechanical-Design
If you're used to standard spring or damper-based pedals with rumble motors attached, a force-feedback pedal is the next step. It uses a high power servo attached to a linear rail to control the motion of the pedal. This allows you to change how the pedal feels with a few changes on your PC, whether that's braking pressure, response or travel or the thottle weight or stiffness. You can even use profiles to build different "feels" for different cars, switching profiles between cars to give each vehicle a different driving experience. Additionally, since the pedal movement is controlled, the feedback it can produce is totally different - imaging feeling ABS feedback moving the pedal, the kick of the gear change through the throttle or feedback from road bumps through the pedals. It's an experience like no other! If that sounds like something you want to build for yourself, then read on! This project documents people who want to design and/or build their own force-feedback pedal. 

<img src="https://github.com/user-attachments/assets/f1a54fd9-5949-4dc0-b573-b34a77b52dd7" width="400">

> [!TIP]
> **Disclaimer** This repository documents my research progress. I wanted to understand the necessary signal processing and control theory algorithms behind such a device. 

> [!WARNING]
> The FFB pedal is a robot and can be dangerous. Please watch [The Terminator](https://en.wikipedia.org/wiki/The_Terminator) before continuing. If not interacted with care, it may cause harm. I'm not responsible for any harm caused by this design suggestion. Use responsibly and at your own risk.

# Project repositories
This project has been divided into multiple repositories, each with differt purposes. The mechanical design repository provides the information you need to build the mechanics of ChrGri's pedal. It's not the only design, but it's strong and reliable. There are more options on the Wiki, and you can find even more designs on the Discord server. The Software repo (this repo) discusses how to select, order and connect the electronics, flash the firmware and get the pedal up and running. The final repo, contains designs for the recommended circuit boards that control the pedal.
| Description           |  Link |
:------------------------- | :------------------------- |
| ChrGri's mechanical and electrical design | https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design |
| Software (firmware, SimHub plugin, ...) |https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal |
| Control Board and Power Board design | https://github.com/gilphilbert/DIY-Sim-Racing-FFB-Pedal-PCBs |


# Support the team
We :heart: doing research. New hardware (e.g. oscilloscopes, logic analyzers, servos, PCBs) is very expensive. Feel free to support us and thus fasten up the research activity.

Dev | captainchris | tcfshcrw | gilphilbert
--- | --- |--- |-- 
Buy me a coffee | <a href="https://www.buymeacoffee.com/Captainchris"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a> | <a href="https://www.buymeacoffee.com/tcfshcrw"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a> |  <a href="https://www.buymeacoffee.com/gilphilbert"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a>  | 
Ko-fi | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/captainchris88) | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/tcfshcrw)|  [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/gilphilbert) |




# License
Shield: [![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]

This work is licensed under a
[Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

The reason for that license selection is that at some point in time, individuals start
- to steal the sources and binaries and sell them on the internet
- mass production of FFB pedals in their living rooms to make money by taking parts from this project and Simucubes design files.
  
All that, without contributing anything to this project.

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg



# Overview

## Mechanical design
The mechanical design is depicted below <br>
<img src="https://github.com/user-attachments/assets/f1a54fd9-5949-4dc0-b573-b34a77b52dd7" width="400"> <br>
<img src="https://github.com/user-attachments/assets/be6eea49-dc3b-4902-b109-a31bb7455d06" width="400">

The mechanical assembly is documented [here](MechanicalAssembly).




## Electronics

### Documentation of soldering and assembly
The embedded code of this DIY FFB pedal runs on an ESP32 S3 microcontroller. The PCB design was developed to prove the concept. It holds the ESP32, the ADC, a RS232 transceiver, brake resistor circuit and connectors. Currently, version 6 of this PCB design is being used, see <br>
<img src="Soldering/7-Connection/DSC00211.JPG" width="400">.

The pictured documentation of the soldering and assembly can be found [here](Soldering).


### Hardware features
For the interessted reader, some deeper analysis can be found [here](Features)

### Ordering
To order the PCB, follow the [instructions](README.md#order-pcb).

HINT:
The proposed PCB is easy to source, but requires manual soldering. The awesome user [gilphilbert](https://github.com/gilphilbert) designed a PCB assembly of the control board which can be found [here](https://github.com/gilphilbert/DIY-Sim-Racing-FFB-Pedal-PCBs). It's currently beeing tested. The current status is published on the discord channel.



# BOM
The price of one pedal was about 250€. The BOM can be found [here](BOM).




# Order PCB
1. Download the control and power PCB, e.g. [control PCB V6](Wiring/PcbV6/DiyFfbPedalPcbV6.zip)
2. Navigate to https://jlcpcb.com/
3. Upload the gerber files
4. Leave the standard settings (2 layers, FR-4, 1.6mm, PCB color of your choice, see image below), check which delivery options is the cheapest <br>
<img src="https://github.com/user-attachments/assets/f06bf91e-a104-4cd2-86a2-3e808cb25434" width="400"> <br>
5. Oder the PCB
6. Wait for the delivery. Typically 10 days to europe.


# Finalizing the software
The description of the software finalization can be found [here](FinalizingSoftware).


## Star History

<a href="https://star-history.com/#ChrGri/DIY-Sim-Racing-FFB-Pedal&ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design&Date">
  <img src="https://api.star-history.com/svg?repos=ChrGri/DIY-Sim-Racing-FFB-Pedal,ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design&type=Date" alt="Star History Chart" width="400">
</a>














