<p align="center">
  <img src="Images/banner.png" alt="DIY Sim Racing FFB Pedal Mechanical Design Banner" width="100%">
</p>

# DIY-Sim-Racing-FFB-Pedal-Mechanical-Design

[![CC BY-NC-SA 4.0][cc-by-nc-sa-shield]][cc-by-nc-sa]
[![SimHub Compatible](https://img.shields.io/badge/SimHub-Plugin%20Compatible-blue.svg)](https://www.simhubdash.com/)
[![Support on Ko-fi](https://img.shields.io/badge/Ko--fi-Donate-ff5e5b.svg?logo=kofi&logoColor=white)](https://ko-fi.com/captainchris88)
[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-Donate-yellow.svg?logo=buy-me-a-coffee)](https://buymeacoffee.com/captainchris)

A force-feedback pedal is the next step after spring or damper based pedals. A high power servo on a linear rail moves the pedal, so you can change how it feels from your PC. This repository describes the mechanical design and the electronics of ChrGri's pedal.

> [!WARNING]
> The FFB pedal is a robot and can be dangerous. Read the [Disclaimer & Safety](#disclaimer-safety) section before you start.

---

## 🚀 Key Highlights

* **Adjustable feel:** Change braking pressure, response, travel, throttle weight or stiffness with a few clicks on your PC.
* **Profiles per car:** Switch profiles between cars to give each vehicle its own pedal feel.
* **Active effects:** Feel ABS, the kick of a gear change through the throttle or road bumps through the pedal.
* **Proven mechanics:** JKK60 linear rail, DYLY-107 load cell and 3080 aluminium profile.
* **Simple electronics:** A small control PCB per pedal and one hardware brake resistor module for the whole rig.

| Mechanical design | Electronics (PCB V8) |
| :---: | :---: |
| <img src="MechanicalDesign_11_20215/Build/Images/DiyPedalAssemblyV3_dilatation_v19.png" width="100%"> | <img src="Soldering_V8/img/pcb_v8_mounted_top.jpg" width="100%"> |

---

## 🔌 Electronics

The control PCB V8 holds the ESP32-S3 mini, the ADS1220 load cell ADC and the RS232 module for the servo communication. It offers
* **No high voltage on the PCB:** The servo is supplied directly from the external [hardware brake resistor module](https://github.com/ChrGri/Diy_Hardware_BrakeResistor). The PCB is powered via USB-C.
* **Low noise load cell reading:** RC filter and separated analog ground give a good signal-to-noise ratio (SNR).
* **Small and cheap:** Small form factor and low costs thanks to the ESP32-S3 mini.
* **Clean wiring:** All connections use screw terminals with the signal names printed on the PCB.

The wiring diagram and the gerber files can be found [here](Wiring/PcbV8).

---

## 🔗 Project Repositories

The project is divided into multiple repositories. This repository describes how to build the mechanics and the electronics of ChrGri's pedal. It's not the only design, but it's strong and reliable. There are more options on the Wiki, and you can find even more designs on the Discord server.

| Description | Link |
| :--- | :--- |
| Mechanical and electrical design (this repo) | https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design |
| Software (firmware, SimHub plugin, ...) | https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal |
| Hardware brake resistor (servo power supply) | https://github.com/ChrGri/Diy_Hardware_BrakeResistor |
| Alternative control board with SMD assembly by gilphilbert | https://github.com/gilphilbert/DIY-Sim-Racing-FFB-Pedal-PCBs |

---

## 📦 Bill of Materials (BOM)

The price of one pedal is about 250€-400€.
* [Electronics BOM](BOM/Electronics/README.md)
* [Mechanical BOM](BOM/Mechanics/README.md)

---

## 🛠️ Assembly Steps

> [!TIP]
> All steps are also available as one PDF: [📄 Download the build guide](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design/releases/download/build-guide-latest/DIY_FFB_Pedal_Build_Guide.pdf). It is updated automatically with every change of the guides.

1. [Order the PCB](PcbOrder)
2. [Assemble the mechanics](MechanicalDesign_11_20215/Build/Assembly_PedalArm.md)
3. [Assemble the electronics (PCB V8)](Soldering_V8)
4. [Build the hardware brake resistor](https://github.com/ChrGri/Diy_Hardware_BrakeResistor)
5. [Finalize the software](FinalizingSoftware)

---

## 🔬 Hardware Features

For the interested reader, some deeper analysis can be found [here](Features).

---

<a id="disclaimer-safety"></a>
## ⚠️ Disclaimer & Safety

> [!TIP]
> This repository documents my research progress. I wanted to understand the necessary signal processing and control theory algorithms behind such a device.

> [!WARNING]
> The FFB pedal is a robot and can be dangerous. Please watch [The Terminator](https://en.wikipedia.org/wiki/The_Terminator) before continuing. If not interacted with care, it may cause harm. I'm not responsible for any harm caused by this design suggestion. Use responsibly and at your own risk.

---

## 💖 Support the Team

We :heart: doing research. New hardware (e.g. oscilloscopes, logic analyzers, servos, PCBs) is very expensive. Feel free to support us and thus speed up the research activity.

Dev | captainchris | tcfshcrw | gilphilbert
--- | --- |--- |-- 
Buy me a coffee | <a href="https://www.buymeacoffee.com/Captainchris"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a> | <a href="https://www.buymeacoffee.com/tcfshcrw"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a> |  <a href="https://www.buymeacoffee.com/gilphilbert"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" height="20px"></a>  | 
Ko-fi | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/captainchris88) | [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/tcfshcrw)|  [![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/gilphilbert) |

### 🛒 Affiliate Disclosure

Some of the links in the BOMs are affiliate links. As an Amazon Associate I earn from qualifying purchases. The price stays the same for you, and you support the further development of the project. Thank you!

---

## 📄 License

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License][cc-by-nc-sa].

[![CC BY-NC-SA 4.0][cc-by-nc-sa-image]][cc-by-nc-sa]

The reason for that license selection is that at some point in time, individuals start
- to steal the sources and binaries and sell them on the internet
- mass production of FFB pedals in their living rooms to make money by taking parts from this project and Simucubes design files.
  
All that, without contributing anything to this project.

[cc-by-nc-sa]: http://creativecommons.org/licenses/by-nc-sa/4.0/
[cc-by-nc-sa-image]: https://licensebuttons.net/l/by-nc-sa/4.0/88x31.png
[cc-by-nc-sa-shield]: https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg

---

## ⭐ Star History

<a href="https://star-history.com/#ChrGri/DIY-Sim-Racing-FFB-Pedal&ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design&Date">
  <img src="https://api.star-history.com/svg?repos=ChrGri/DIY-Sim-Racing-FFB-Pedal,ChrGri/DIY-Sim-Racing-FFB-Pedal-Mechanical-Design&type=Date" alt="Star History Chart" width="400">
</a>
