# Ideas

This is a master doc / wish list to toss ideas for future additions to the BREAD framework.

[Elaborated](#elaborated-ideas) list:

- [SLC_CMPV](#slc_cmpv): A slice utilizing a Pi Zero, the usual Nano, some peripheral circuitry, and python’s OpenCV to create a BREAD-compatible computer vision system.
- [SLC_SENS](#slc_iich): A slice that can read I2C data from multiple generic sensors at once and parse through it.
- [SLC_INVT](#slc_invt): A full blown open source, BREAD-friendly inverter, essential for any AC or BLDC machine control applications.

[Rough](#rough-ideas) list:

- [Ideas](#ideas)
  - [Elaborated Ideas](#elaborated-ideas)
    - [SLC\_CMPV](#slc_cmpv)
    - [SLC\_IICH](#slc_iich)
    - [SLC\_INVT](#slc_invt)
  - [Rough Ideas](#rough-ideas)
    - [Laser Driver](#laser-driver)
    - [Protected Analog Input](#protected-analog-input)
    - [Robust Analog Output](#robust-analog-output)
    - [Frequency Counter](#frequency-counter)
    - [Safety Interlock](#safety-interlock)
    - [Impedance/Capacitance Measurement](#impedancecapacitance-measurement)
    - [General Purpose DAQ](#general-purpose-daq)

## Elaborated Ideas

### SLC_CMPV

**Description:**

A slice utilizing a Pi Zero, the usual Nano, some peripheral circuitry, and python’s OpenCV to create a BREAD-compatible computer vision system. This project is inspired by work being done in OSHE at Michigan Tech.
--> Why don't we just use the Nano RP2040? - Cam

**Components:**

- Pi Zero
- Nano
- Peripheral circuitry
- Python’s OpenCV

**Potential Applications:**

- Machine vision
- Quality control

### SLC_IICH

I2C sensor hub slice.

**Description:**

A slice that can read I2C data from multiple generic sensors at once and parse through it to enhance the data acquisition capabilities of the BREAD framework.

**Components:**

- Multiplexer?
- I2C to SPI conv?
  --> A software solution might be more elegant and effective long term if possible / feasible (Cam and Finn briefly discussed the merits and potential of using something like SoftI2CMaster, SoftWire or SoftwareWire to acheive this; requires)

**Potential Applications:**

- Interfacing with existing devices / components that are I2C, broad applications

### SLC_INVT

**Description:**

A full blown open source, BREAD-friendly inverter. This is essential for any AC or BLDC machine control applications, catering to the widespread use of induction motors.

**Components:**

- Inverter circuitry
- Control algorithms for AC and BLDC motors

**Potential Applications:**

- Industrial machine control
- Renewable energy systems
- Electric vehicles

## Rough Ideas

### Laser Driver

- Reference
  - [github.com/Laser4DIY/Laser-Driver-v2](https://github.com/Laser4DIY/Laser-Driver-v2)
  - [HardwareX paper](https://doi.org/10.1016/j.ohx.2021.e00240)

### Protected Analog Input

- Differential or single-ended analog input with overvoltage protection, clamping, and optional filtering.
- Ideal for measuring external signals in harsh or unknown environments.

### Robust Analog Output

- Buffered DAC output with selectable range and short-circuit protection.
- Could include internal test waveforms or ramp generation.

### Frequency Counter

- High-resolution input capture for digital signal frequency or period measurement.
- Useful for RPM sensing, PWM decoding, or external signal characterization.

### Safety Interlock

- Monitors and enforces hardware safety conditions using logic inputs, emergency stop, key switch, or watchdog timeout.
- Designed to safely enable/disable critical functions.

### Impedance/Capacitance Measurement

- Precision excitation and response readout for estimating passive component values.
- Useful for inline condition monitoring or sensor interface (e.g., soil moisture, touch).

### General Purpose DAQ

- Multi-channel, configurable analog input/output with digital I/O and signal generation.
- Can include low-pass filtering, excitation, and software calibration. Ideal for lab or testbench automation.
