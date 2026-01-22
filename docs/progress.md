# Progress Tracker

## TODO

- DCMT
- IAQM
- RLHT
- SOLR
- HEAT
- LVAI
- RLAY
- SERV
- THRM
- USBP

## Release Testing Tracker

- ✅ Done
- 🛠️ In Progress
- ❌ Incomplete
- ❓ Unknown
- 🔁 Revising

  This is to track the procurement and testing of all the BREADS boards for release.

| Name                                                           | Schem | PCB | BOM | Docs | Review | FW  | Test | Notes                                                                 | Known Issues                                |
| -------------------------------------------------------------- | ----- | --- | --- | ---- | ------ | --- | ---- | --------------------------------------------------------------------- | ------------------------------------------- |
| _Controller_                                                   | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Nano_Original_Kicad](https://github.com/FEASTorg/Nano_KiCAD)  | ✅    | ✅  | ✅  | 🛠️   | ❌     | -   | ❌   | Nano v3.3 but w/out reg., button, D13 LED; uses USB mini-b            | ---                                         |
| [can-nano-shield](https://github.com/FEASTorg/can-nano-shield) | ✅    | ✅  | 🔁  | ❌   | ✅     | ❌  | ❌   | Arduino Nano shield with MCP2515 & TJA1051/3                          | ---                                         |
| _Design_                                                       | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_TEMP](https://github.com/FEASTorg/Slice_TEMP)           | ✅    | ✅  | 🔁  | ❌   | ✅     | -   | -    | 2 and 4 layer variants and 4 layer XL                                 | ---                                         |
| [Slice_PRTO](https://github.com/FEASTorg/Slice_PRTO)           | ✅    | ✅  | 🔁  | ❌   | ✅     | -   | ❌   | 2 layer: screw term conns, SMT-proto, and TH-proto                    | ---                                         |
| _2 layer_                                                      | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_AQDO](https://github.com/FEASTorg/Slice_AQDO)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for galvanic (Clark‑type) oxygen electrode probes     |                                             |
| [Slice_AQEC](https://github.com/FEASTorg/Slice_AQEC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for platinum redox ORP electrode probes               |                                             |
| [Slice_AQOR](https://github.com/FEASTorg/Slice_AQOR)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for two‑electrode conductometric (cell) sensor probes |                                             |
| [Slice_AQPH](https://github.com/FEASTorg/Slice_AQPH)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for glass membrane pH electrode probes                |                                             |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Simple discrete component buck converter                              | Needs advanced control programming          |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | 🔁  | 🔁   | Fixed pin and layout, added back fuses                                | Motor1 drive pin isnt PWM                   |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | layout optimized, duplicated circuit.                                 | op-amp issues                               |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | 🛠️  | 🛠️   | PCB of env-safety-monitor from PV Box paper.                          | SD card footprint flipped                   |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | For BR flow cell. Referencing Pioreactor, for OD.                     | ---                                         |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Load cell ADC.                                                        | ---                                         |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analysis of cascaded amp.                                             | Needs expanded signal analysis capabilities |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Updated to latest BREADS TEMPlate, replaced terminals with standard.  | ---                                         |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | 🔁  | 🔁   | Changed terminals to standard ones, upgraded to MAX31855              | ---                                         |
| [Slice_RTDM](https://github.com/FEASTorg/Slice_RTDM)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | MAX31865 x4 for measuring 2-,3-, or 4-wire RTDs                       | ---                                         |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Redid voltage in sel.                                                 | Past one behaved erratically, fried servos  |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | NEEDS UPDATING.                                                       | ---                                         |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | 3 vars: MAX6675 (A), MAX31855 (B), MAX31856 (C).                      | ---                                         |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Redid layout to be optimized, updated to latest BREADS TEMPlate.      | ---                                         |
| [Slice_VCAC](https://github.com/FEASTorg/Slice_VCAC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | curr. read (10,20,40A; same fp) + AC or DC volt. read, replaces CRXX  | ---                                         |
| [Slice_VCDC](https://github.com/FEASTorg/Slice_VCAC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | curr. read (10,20,40A; same fp) + AC or DC volt. read, replaces CRXX  | ---                                         |
| _4 layer_                                                      | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Atlas Sci. pH/DO/ORP/EC OEM IC with onboard isolation                 | ---                                         |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | for large BDC motors                                                  | ---                                         |
| [Slice_FPSG](https://github.com/FEASTorg/Slice_FPSG)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | New for high speed strain gauge (load cell) measurements.             | ---                                         |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Targets 3 liion cells to generate 12V pwrsrc off-grid.                | ---                                         |
| [Slice_THMX](https://github.com/FEASTorg/Slice_THMX)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | using LTC2983 multi-channel, multi-temp sensor IC                     | ---                                         |
