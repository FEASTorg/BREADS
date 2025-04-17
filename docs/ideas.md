# Ideas

This is a master doc / wish list to toss ideas for future additions to the BREAD framework.

Elaborated list:

- [SLC_CMPV](#slc_cmpv): A slice utilizing a Pi Zero, the usual Nano, some peripheral circuitry, and python’s OpenCV to create a BREAD-compatible computer vision system.
- [SLC_SENS](#slc_sens): A slice that can read I2C data from multiple generic sensors at once and parse through it.
- [SLC_INVT](#slc_invt): A full blown open source, BREAD-friendly inverter, essential for any AC or BLDC machine control applications.

Ideas to flesh out

- Laser Driver
  - [github.com/Laser4DIY/Laser-Driver-v2](https://github.com/Laser4DIY/Laser-Driver-v2)
  - [HardwareX: Open-source lab hardware: Driver and temperature controller for high compliance voltage, fiber-coupled butterfly lasers](https://doi.org/10.1016/j.ohx.2021.e00240)

## SLC_CMPV

### Description

A slice utilizing a Pi Zero, the usual Nano, some peripheral circuitry, and python’s OpenCV to create a BREAD-compatible computer vision system. This project is inspired by work being done in OSHE at Michigan Tech.
--> Why don't we just use the Nano RP2040? - Cam

### Components

- Pi Zero
- Nano
- Peripheral circuitry
- Python’s OpenCV

### Potential Applications

- Machine vision
- Quality control

## SLC_SENS

I2C sensor hub slice.

### Description

A slice that can read I2C data from multiple generic sensors at once and parse through it to enhance the data acquisition capabilities of the BREAD framework.

### Components

- Multiplexer?
- I2C to SPI conv?
  --> A software solution might be more elegant and effective long term if possible / feasible (Cam and Finn briefly discussed the merits and potential of using something like SoftI2CMaster, SoftWire or SoftwareWire to acheive this; requires)

### Potential Applications

- Interfacing with existing devices / components that are I2C, broad applications

## SLC_INVT

### Description

A full blown open source, BREAD-friendly inverter. This is essential for any AC or BLDC machine control applications, catering to the widespread use of induction motors.

### Components

- Inverter circuitry
- Control algorithms for AC and BLDC motors

### Potential Applications

- Industrial machine control
- Renewable energy systems
- Electric vehicles
