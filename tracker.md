
# Progress Tracker

## BREAD v2

*Note that the below table is filled according to previous students work that hasn't since been verified.*

- ✅ Done
- 🛠️ In Progress
- ❌ Incomplete
- ❓ Unknown

| Name | Schematic | Board | BOM | Firmware | Tested | Issues |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT)   | ✅ | ✅ | ✅ | ✅ | ✅ |  |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK) | ✅ | ✅ | ✅ | ❌ | ❌ | Needs advanced control programming |
| [Slice_CRXX](https://github.com/FEASTorg/Slice_CRXX) | ✅ | ✅ | ✅ | ✅ | ❓ |  |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT) | ✅ | ✅ | ✅ | ✅ | ❓ |  |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT) | ✅ | ✅ | ✅ | ✅ | ❓ | Requires building and testing; op-amp issues |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI) | ✅ | ✅ | ✅ | ✅ | ❓ | Needs expanded signal analysis capabilities |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY) | ✅ | ✅ | ✅ | ✅ | ✅ | |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT) | ✅ | ✅ | ✅ | ✅ | ✅ | |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV) | ✅ | ✅ | ✅ | ❓ | ❌ | Often behaves erratically, sometimes fries servos |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR) | ✅ | ✅ | ✅ | ❌ | ❌ | Needed redesign as the charging chip too small |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP) | ✅ | ✅ | ✅ | ❓ | ❓ |  |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM) | ✅ | ✅ | ✅ | ❓ | ❓ |  |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP) | ✅ | ✅ | ✅ | ❌ | ❌ | Never got the parts; needs building and testing |

### v2 Release Testing Tracker

This is to track the procurement and testing of all the BREAD v2 boards for release.

| Name | RFM | BOM | Firmware | Tested | Comments |
| --- | --- | --- | --- | --- | --- |
| [Loaf_ESPT](https://github.com/FEASTorg/Loaf_ESPT)  | ✅ | 🛠️ | ❌ | ❌ | Done by Finn already. Nothing changed, same outputs used. |
| [Slice_BUCK](https://github.com/FEASTorg/Slice_BUCK) | ✅ | 🛠️ | ❌ | ❌ | Updated to latest BREAD TEMPlate and footprints. |
| [Slice_CRXX](https://github.com/FEASTorg/Slice_CRXX) | ✅ | 🛠️ | ❌ | ❌ | Updated to latest BREAD TEMPlate and unified the three (10A, 20A, 40A). |
| [Slice_DCMT](https://github.com/FEASTorg/Slice_DCMT) | ✅ | 🛠️ | ❌ | ❌ | Done by Finn already. Updated to latest BREAD TEMPlate. |
| [Slice_HEAT](https://github.com/FEASTorg/Slice_HEAT) | ✅ | 🛠️ | ❌ | ❌ | Redid layout to be optimized, duplicated circuit, updated to latest BREAD TEMPlate. |
| [Slice_LVAI](https://github.com/FEASTorg/Slice_LVAI) | ✅ | 🛠️ | ❌ | ❌ | Full docs / analysis of cascaded amp, redid board to fit onto new BREAD TEMPlate |
| [Slice_RLAY](https://github.com/FEASTorg/Slice_RLAY) | ✅ | 🛠️ | ❌ | ❌ | Updated to latest BREAD TEMPlate, replaced terminals with standard. |
| [Slice_RLHT](https://github.com/FEASTorg/Slice_RLHT) | ✅ | 🛠️ | ❌ | ❌ | Changed terminals to standard ones, upgraded to MAX31855 |
| [Slice_SERV](https://github.com/FEASTorg/Slice_SERV) | ✅ | 🛠️ | ❌ | ❌ | Redid voltage in selection, updated to new core and terms. |
| [Slice_SOLR](https://github.com/FEASTorg/Slice_SOLR) | ✅ | 🛠️ | ❌ | ❌ | Full redesign and implementation, old design the charging chip too small. |
| [Slice_STEP](https://github.com/FEASTorg/Slice_STEP) | ✅ | 🛠️ | ❌ | ❌ | |
| [Slice_THRM](https://github.com/FEASTorg/Slice_THRM) | ✅ | 🛠️ | ❌ | ❌ | Changed terminals and reviewed, added hierarchial sheets. |
| [Slice_USBP](https://github.com/FEASTorg/Slice_USBP) | ✅ | 🛠️ | ❌ | ❌ | Redid layout to be optimized, updated to latest BREAD TEMPlate. |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM) | ✅ | 🛠️ | ❌ | ❌ | New, technically part of v3 release, accelerated for PVbox |

## BREAD v3

This is for the next phase of BREAD which will feature all the previous boards from v2 but with upgrades to the BREAD Slice core and also includes a number of new slices seen in the table below to add more functionalities to BREAD.

| Name | Schematic | Board | BOM | Firmware | Tested | Application |
| --- | --- | --- | --- | --- | --- | --- |
| [Slice_IAQM](https://github.com/FEASTorg/Slice_IAQM) | ✅ | ✅ | 🛠️ | ❌ | ❌ | For PV Box. |
| [Slice_ACAR](https://github.com/FEASTorg/Slice_ACAR) | ✅ | 🛠️ | ❌ | ❌ | ❌ | To replace PHDO. |
| [Slice_ACHP](https://github.com/FEASTorg/Slice_ACHP) | ✅ | 🛠️ | ❌ | ❌ | ❌ | To replace PHDO. |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM) | ✅ | 🛠️ | ❌ | ❌ | ❌ | To replace PHDO. |
| [Slice_LCDI](https://github.com/FEASTorg/Slice_LCDI) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For ESB. |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For tensile tester. |
| [Slice_SSTP](https://github.com/FEASTorg/Slice_SSTP) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For tensile tester. |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB) | ✅ | 🛠️ | ❌ | ❌ | ❌ | For Big BR. |
| [Slice_EADC](https://github.com/FEASTorg/Slice_EADC) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For BR flow cell. External ADC, for OD. |
| [Slice_LEDD](https://github.com/FEASTorg/Slice_LEDD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For BR flow cell. External LED driving circuit, for OD. |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD) | 🛠️ | ❌ | ❌ | ❌ | ❌ | For BR flow cell. Referencing Pioreactor, for OD. See if can replace with LVAI |
| [Slice_HPTC](https://github.com/FEASTorg/Slice_HPTC) | ✅ | ✅ | 🛠️ | ❌ | ❌ | From Rob Herc, going to test non slice version first |

### v3 Release Testing Tracker

This is to track the procurement and testing of all the BREAD v3 boards.

This is to track the procurement and testing of all the BREAD v2 boards.
| Name | RFM | BOM | Firmware | Tested | Comments |
| --- | --- | --- | --- | --- | --- |
| [Slice_ACAR](https://github.com/FEASTorg/Slice_ACAR) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_ACHP](https://github.com/FEASTorg/Slice_ACHP) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_AOEM](https://github.com/FEASTorg/Slice_AOEM) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_LCDI](https://github.com/FEASTorg/Slice_LCDI) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_LOAD](https://github.com/FEASTorg/Slice_LOAD) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_SSTP](https://github.com/FEASTorg/Slice_SSTP) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_GDHB](https://github.com/FEASTorg/Slice_GDHB) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_EADC](https://github.com/FEASTorg/Slice_EADC) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_LEDD](https://github.com/FEASTorg/Slice_LEDD) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_LEPD](https://github.com/FEASTorg/Slice_LEPD) | 🛠️ | ❌ | ❌ | ❌ | |
| [Slice_HPTC](https://github.com/FEASTorg/Slice_HPTC) | ✅ | ❌ | ❌ | ❌ | |


## BREAD v1
Archived GitHub repos only, see original OSF repo for full BREAD v1 release corresponding to the [paper](https://doi.org/10.1016/j.ohx.2023.e00467).

| Name | Schematic | Board | BOM | Firmware | Tested | Notes |
| --- | --- | --- | --- | --- | --- | --- |
| [Loaf_x004](https://github.com/FEASTorg/Loaf_x004)   | ✅ | ✅ | ✅ | ✅ | ✅ | Superseded by ESPT, |
| [Slice_PUMP](https://github.com/FEASTorg/Slice_PUMP) | ✅ | ✅ | ✅ | ✅ | ❌ | Gives intended output but never got working with Dr. Ong's pump |
| [Slice_AAFT](https://github.com/FEASTorg/Slice_AAFT) | ✅ | ✅ | ✅ | ✅ | ❓ | Deprecated; efforts should go to SLC_LVAI |
| [Slice_PHDO](https://github.com/FEASTorg/Slice_PHDO) | ✅ | ✅ | ✅ | ✅ | ✅ | Deprecated by ACAR, ACHP, AOEM |
| [Slice_CR10](https://github.com/FEASTorg/Slice_CR10) | ✅ | ✅ | ✅ | ✅ | ✅ | Superseded by CRXX, no known issues, check component availability |
| [Slice_CR20](https://github.com/FEASTorg/Slice_CR20) | ✅ | ✅ | ✅ | ✅ | ❌ | Superseded by CRXX, no known issues, check component availability |
| [Slice_CR40](https://github.com/FEASTorg/Slice_CR40) | ✅ | ✅ | ✅ | ✅ | ❌ | Superseded by CRXX, no known issues, check component availability |