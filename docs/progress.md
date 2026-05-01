# Progress Tracker

## KMLib revise

1. ~~Slice_TEMP_NUCL_S4L-r1~~
2. ~~Slice_TEMP_NUCL_L4L-r1~~
3. ~~Slice_TEMP_NANO_S2L-r2~~
4. ~~Slice_TEMP_NANO_S2L-r1~~
5. ~~Slice_PRTO_CONN_S2L~~
6. ~~Slice_PRTO_SMT_S2L~~
7. ~~Slice_PRTO_THT_S2L~~
8. ~~Slice_PRTO_THTA_S2L~~
9. ~~Slice_RTDM~~
10. ~~Slice_DCMT~~
11. ~~Slice_RLHT~~
12. ~~Slice_IOCT~~
13. ~~Slice_RLAY~~
14. Slice_BUCK
15. Slice_IOAC
16. Slice_THRM_31856
17. Slice_THRM_31855
18. Slice_VCDC
19. Slice_AOEM
20. Slice_VCAC
21. Slice_THMX
22. Slice_STEP
23. Slice_LOAD
24. Slice_LEPD
25. Slice_FPSG
26. Slice_AQOR
27. Slice_AQEC
28. Slice_AQDO
29. Slice_AQPH
30. Slice_GDHB
31. Slice_IAQM
32. Slice_USBP
33. Slice_SOLR
34. Slice_SERV
35. Slice_LVAI
36. Slice_HEAT
37. Slice_PHDO

## Consistency Clean

1. Slice_TEMP_NUCL_S4L-r1
2. Slice_TEMP_NUCL_L4L-r1
3. Slice_TEMP_NANO_S2L-r2
4. Slice_TEMP_NANO_S2L-r1
5. Slice_PRTO_CONN_S2L
6. Slice_PRTO_SMT_S2L
7. Slice_PRTO_THT_S2L
8. Slice_PRTO_THTA_S2L
9. Slice_RTDM
10. Slice_DCMT
11. Slice_RLHT
12. Slice_IOCT
13. Slice_RLAY
14. Slice_BUCK
15. Slice_IOAC
16. Slice_THRM_31856
17. Slice_THRM_31855
18. Slice_VCDC
19. Slice_AOEM
20. Slice_VCAC
21. Slice_THMX
22. Slice_STEP
23. Slice_LOAD
24. Slice_LEPD
25. Slice_FPSG
26. Slice_AQOR
27. Slice_AQEC
28. Slice_AQDO
29. Slice_AQPH
30. Slice_GDHB
31. Slice_IAQM
32. Slice_USBP
33. Slice_SOLR
34. Slice_SERV
35. Slice_LVAI
36. Slice_HEAT
37. Slice_PHDO

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
| [Nano_Original_Kicad](https://github.com/feastorg/Nano_KiCAD)  | ✅    | ✅  | ✅  | 🛠️   | ❌     | -   | ❌   | Nano v3.3 but w/out reg., button, D13 LED; uses USB mini-b            | ---                                         |
| [can-nano-shield](https://github.com/feastorg/can-nano-shield) | ✅    | ✅  | 🔁  | ❌   | ✅     | ❌  | ❌   | Arduino Nano shield with MCP2515 & TJA1051/3                          | ---                                         |
| _Design_                                                       | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_TEMP](https://github.com/feastorg/Slice_TEMP)           | ✅    | ✅  | 🔁  | ❌   | ✅     | -   | -    | 2 and 4 layer variants and 4 layer XL                                 | ---                                         |
| [Slice_PRTO](https://github.com/feastorg/Slice_PRTO)           | ✅    | ✅  | 🔁  | ❌   | ✅     | -   | ❌   | 2 layer: screw term conns, SMT-proto, and TH-proto                    | ---                                         |
| _2 layer_                                                      | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_AQDO](https://github.com/feastorg/Slice_AQDO)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for galvanic (Clark‑type) oxygen electrode probes     |                                             |
| [Slice_AQEC](https://github.com/feastorg/Slice_AQEC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for platinum redox ORP electrode probes               |                                             |
| [Slice_AQOR](https://github.com/feastorg/Slice_AQOR)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for two‑electrode conductometric (cell) sensor probes |                                             |
| [Slice_AQPH](https://github.com/feastorg/Slice_AQPH)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analog frontend for glass membrane pH electrode probes                |                                             |
| [Slice_BUCK](https://github.com/feastorg/Slice_BUCK)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Simple discrete component buck converter                              | Needs advanced control programming          |
| [Slice_DCMT](https://github.com/feastorg/Slice_DCMT)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | 🔁  | 🔁   | Fixed pin and layout, added back fuses                                | Motor1 drive pin isnt PWM                   |
| [Slice_HEAT](https://github.com/feastorg/Slice_HEAT)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | layout optimized, duplicated circuit.                                 | op-amp issues                               |
| [Slice_IAQM](https://github.com/feastorg/Slice_IAQM)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | 🛠️  | 🛠️   | PCB of env-safety-monitor from PV Box paper.                          | SD card footprint flipped                   |
| [Slice_LEPD](https://github.com/feastorg/Slice_LEPD)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | For BR flow cell. Referencing Pioreactor, for OD.                     | ---                                         |
| [Slice_LOAD](https://github.com/feastorg/Slice_LOAD)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Load cell ADC.                                                        | ---                                         |
| [Slice_LVAI](https://github.com/feastorg/Slice_LVAI)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Analysis of cascaded amp.                                             | Needs expanded signal analysis capabilities |
| [Slice_RLAY](https://github.com/feastorg/Slice_RLAY)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Updated to latest BREADS TEMPlate, replaced terminals with standard.  | ---                                         |
| [Slice_RLHT](https://github.com/feastorg/Slice_RLHT)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | 🔁  | 🔁   | Changed terminals to standard ones, upgraded to MAX31855              | ---                                         |
| [Slice_RTDM](https://github.com/feastorg/Slice_RTDM)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | MAX31865 x4 for measuring 2-,3-, or 4-wire RTDs                       | ---                                         |
| [Slice_SERV](https://github.com/feastorg/Slice_SERV)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Redid voltage in sel.                                                 | Past one behaved erratically, fried servos  |
| [Slice_STEP](https://github.com/feastorg/Slice_STEP)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | NEEDS UPDATING.                                                       | ---                                         |
| [Slice_THRM](https://github.com/feastorg/Slice_THRM)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | 3 vars: MAX6675 (A), MAX31855 (B), MAX31856 (C).                      | ---                                         |
| [Slice_USBP](https://github.com/feastorg/Slice_USBP)           | ✅    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Redid layout to be optimized, updated to latest BREADS TEMPlate.      | ---                                         |
| [Slice_VCAC](https://github.com/feastorg/Slice_VCAC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | curr. read (10,20,40A; same fp) + AC or DC volt. read, replaces CRXX  | ---                                         |
| [Slice_VCDC](https://github.com/feastorg/Slice_VCAC)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | curr. read (10,20,40A; same fp) + AC or DC volt. read, replaces CRXX  | ---                                         |
| _4 layer_                                                      | ---   | --- | --- | ---  | ---    | --- | ---  | ---                                                                   | ---                                         |
| [Slice_AOEM](https://github.com/feastorg/Slice_AOEM)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | Atlas Sci. pH/DO/ORP/EC OEM IC with onboard isolation                 | ---                                         |
| [Slice_GDHB](https://github.com/feastorg/Slice_GDHB)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | for large BDC motors                                                  | ---                                         |
| [Slice_FPSG](https://github.com/feastorg/Slice_FPSG)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | New for high speed strain gauge (load cell) measurements.             | ---                                         |
| [Slice_SOLR](https://github.com/feastorg/Slice_SOLR)           | 🛠️    | 🛠️  | 🔁  | ❌   | ❌     | ❌  | ❌   | Targets 3 liion cells to generate 12V pwrsrc off-grid.                | ---                                         |
| [Slice_THMX](https://github.com/feastorg/Slice_THMX)           | ✅    | ✅  | 🔁  | ❌   | ❌     | ❌  | ❌   | using LTC2983 multi-channel, multi-temp sensor IC                     | ---                                         |
