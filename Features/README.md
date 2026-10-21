# 🔬 Hardware Features

## 🔥 Brake Resistor
In early versions, only a capacitor was used to store the energy fed back by the servo. From PCB V5 to V7, a brake resistor circuit on the PCB dissipated this energy, see [here](BrakeResistor).

Since PCB V8, the brake resistor is no longer on the PCB. The external [hardware brake resistor module](https://github.com/ChrGri/Diy_Hardware_BrakeResistor) clamps the servo supply voltage purely in hardware.

## 📈 ADC
Some investigations to improve the loadcell reading accuracy have been done. Results are documented [here](ADC).

## ⚖️ Loadcell
Some investigations regarding different loadcell types have been done. Results are documented [here](Loadcell).
