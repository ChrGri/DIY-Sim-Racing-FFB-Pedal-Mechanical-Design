# Flashing the ESP32
> [!WARNING]
> Flashing the firmware before connecting the 36V power is crucial, since the ESPs GPIOs can be in undefined state otherwise, resulting in damage of the periphery, e.g. brake resistor. 

Now make sure you test your electronics! Electronics setup and testing is covered in [Electronics Setup](https://github.com/ChrGri/DIY-Sim-Racing-FFB-Pedal/wiki/Electronics-setup) and includes troubleshooting steps.



# Simhub plugin parameterization

## Simhub plugin configuration
When using the PCB and mechanical design from this repo, tune the Simhub plugin as suggested below.

### CDC setting
Working settings with V5 PCB for CDC and DTR/RTS are depicted below <br> 
![image](https://github.com/user-attachments/assets/7736c68e-6b4b-4472-8f7a-f8caafe29bf0)

### Pedal  kinematic
To accurately estimate the pedal force, the controller needs information of the geometric design. Open the **PEDAL-KINEMATIC** tab and adjust the values accordingly. 

O to A = 215<br>
A to B = 66<br>
O to C = 167<br>
C to D = 0<br>
C to B = 233<br>

![image](https://github.com/user-attachments/assets/76edaffb-0a6f-41bf-88c6-68cf352516ae)

The controller will automatically measure the travel distance. If you want it not to hit the max endstop, reduce the travel distance below the acctual travel distance of the sled.











