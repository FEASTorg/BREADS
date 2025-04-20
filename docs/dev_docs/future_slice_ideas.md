# Ideas

This is a master doc / wish list to brainstorm and start to plan out ideas for future additions to the BREAD framework.

- [Ideas](#ideas)
  - [Elaborated Ideas](#elaborated-ideas)
    - [SLC\_RAMP](#slc_ramp)
    - [SLC\_ECHM](#slc_echm)
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

### SLC_RAMP

**Description:**

RepRap Actuator Motion Platform.

A BREAD-compatible motion control slice inspired by the RepRap ecosystem, integrating essential circuitry for stepper motor driving, heater control, and endstop sensing—designed for use in 3D printers, CNC machines, pick-and-place systems, or any precise multi-axis actuation system.

**Key Specifications:**

- **Motor Drivers:** Up to 4 stepper drivers (e.g., TMC2209, A4988)
- **Heater Outputs:** 2 high-current MOSFET channels for heated bed & hotend
- **Thermistor Inputs:** 2 analog inputs for temperature sensing (100k NTC)
- **Endstop Inputs:** 6 digital inputs with filtering and pull-ups
- **Power Input:** 12–24 V input with onboard buck converter to 5 V
- **Outputs:** Fan control, PWM accessory output

**Components:**

- **Motor Drivers:** Socketed stepper drivers (A4988, TMC2209, etc.)
- **MOSFETs:** Logic-level N-channel MOSFETs (e.g., IRLZ44N) with flyback diodes
- **Thermistor Inputs:** Voltage divider circuits with filtering caps
- **Voltage Regulation:** MP1584 12–24 V to 5 V buck converter
- **MCU Socket:** Compatible with Nano-style headers
- **Fan Headers:** Dedicated MOSFET output and flyback diode
- **Connectors:** Screw terminals or XT30 for power, JST or dupont for I/O

**Potential Applications:**

- Desktop 3D printers (FDM/FFF)
- Laser cutters and engravers
- Small CNC mills or routers
- Pick-and-place and motion automation

**References:**

- [ghent360 - PrntrBoardV2](https://github.com/ghent360/PrntrBoardV2)
- [RAMPS 1.4 board](https://reprap.org/wiki/RAMPS_1.4)
- [matt3u - RAMPS-1.4_KiCad?tab=readme-ov-file](https://github.com/matt3u/RAMPS-1.4_KiCad?tab=readme-ov-file)
- [RepRap Firmware](https://reprap.org/wiki/RepRap_Firmware)
- [Marlin Firmware](https://marlinfw.org/)
- [cmsteinBR - sb-cnc-shield](https://github.com/cmsteinBR/sb-cnc-shield)

### SLC_ECHM

**Description:**  
A BREAD‑compatible electrochemical analysis slice providing three operating modes in a standard three‑electrode cell:

1. **Potentiostat** – precisely controls WE‑RE potential (±2 V, 1 mV resolution).
2. **Galvanostat** – sources/sinks cell current (±100 nA to ±100 mA across five decades).
3. **EIS** – performs AC impedance spectroscopy (10 mHz–100 kHz, ≤10 mV rms, phase error <1° up to 10 kHz).

**Key Specifications:**

- **Voltage range:** ±2 V, drift <100 µV/h
- **Current range:** ±100 nA–±100 mA (0.1 Ω to 1 kΩ sense resistors)
- **EIS sweep:** 10 mHz–100 kHz, 10 mV amplitude
- **Resolution:** 16‑bit simultaneous voltage/current measurement; 12‑bit DAC

**Components:**

- **MCU:** STM32F303RE (dual 12‑bit DAC, high‑speed ADC)
- **DAC:** MCP4922 dual 12‑bit SPI
- **ADC:** ADS131E08 8‑channel 24‑bit Σ-Δ
- **Control amps:** OPA192 (low‑noise precision)
- **Buffer amps:** OPA827 (wide‑bandwidth)
- **Analog switches:** ADG5248 (mode), ADG5412 (range)
- **Sense resistors:** 0.1 Ω, 1 Ω, 10 Ω, 1 kΩ (0.1 % tol.)
- **Regulators:** LDOs for +3.3 V and ±5 V rails
- **Connectors:** 3‑pin BNC/SMA for RE/WE/CE, test headers

**Potential Applications:**

- Cyclic voltammetry & chronoamperometry
- Corrosion monitoring
- Battery and fuel‑cell impedance characterization
- Real‑time biosensor readout in bioreactors

**References:**

- [A Small yet Complete Framework for a Potentiostat, Galvanostat, and Electrochemical Impedance Spectrometer](https://pubs.acs.org/doi/10.1021/acs.jchemed.1c00228)
- [IO Rodeo Rodeostat](https://github.com/iorodeo/potentiostat)
- [TDstatv3 - A USB-controlled potentiostat/galvanostat for thin-film battery characterization](https://github.com/thomasdob/tdstatv3)
- [FBRC/mystat - A USB-controlled potentiostat/galvanostat for electrochemistry measurements](https://codeberg.org/FBRC/mystat)

### SLC_CMPV

- Idea from previous student at MTU

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
