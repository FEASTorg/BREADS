<div align="center">
  <!-- Title: -->
  <a href="https://github.com/uwo-fast">
    <img src="https://github.com/uwo-fast/.github/blob/main/branding/FAST%20Logo%20Orange%20on%20White%20Transparent.png" height="100">
  </a>
  <h2><a href="https://github.com/uwo-fast/BREAD"> BREAD </a></h2>
  <!-- Labels: -->
  <!-- First row: -->
  <a href="https://github.com/uwo-fast/.github/blob/main/collaborating.md">
    <img src="https://img.shields.io/badge/Collaborators-Welcome-lightgreen" alt="Collaborators">
  </a>
  <a href="https://github.com/uwo-fast/.github/blob/main/contributing.md">
    <img src="https://img.shields.io/badge/Contributions-Welcome-lightgreen" alt="Contributions">
  </a>
  <a href="https://www.appropedia.org/Category:FAST_literature_reviews">
    <img src="https://img.shields.io/badge/Appropedia-Lit_Review-white" alt="Appropedia">
  </a>
  <a href="https://certification.oshwa.org/">
    <img src="https://img.shields.io/badge/OSHWA-Incomplete-cc3300?style=flat-square" height="20" alt="OSHWA">
    <!-- img src="https://img.shields.io/badge/OSHWA-Certified-darkgreen?style=flat-square" height="20" alt="OSHWA" -->       <!-- img src="https://img.shields.io/badge/OSHWA-Pending-darkorange?style=flat-square" height="20" alt="OSHWA" -->
  </a>
  <a href="https://osf.io/">
    <img src="https://img.shields.io/badge/OSF-Project-lightblue" alt="OSF">
  </a>
  <a href="https://doi.org">
    <img src="https://img.shields.io/badge/Paper-Unsubmitted-ff0066" alt="Paper">
  </a>
  <!-- Second row: -->
  <br>
  <a href="https://github.com/uwo-fast/BREAD/blob/main/LICENSE">
    <img src="https://img.shields.io/github/license/uwo-fast/BREAD" alt="License">
  </a>
  <a href="https://github.com/uwo-fast/BREAD">
    <img src="https://img.shields.io/github/repo-size/uwo-fast/BREAD" alt="Repo Size">
  </a>
  <a href="https://github.com/uwo-fast/BREAD/issues">
    <img src="https://img.shields.io/github/issues/uwo-fast/BREAD" alt="Issues">
  </a>
  <a href="https://github.com/uwo-fast/BREAD/network/members">
    <img src="https://img.shields.io/github/forks/uwo-fast/BREAD?style=social" alt="Forks">
  </a>
  <a href="https://github.com/uwo-fast/BREAD/stargazers">
    <img src="https://img.shields.io/github/stars/uwo-fast/BREAD?style=social" alt="Stars">
  </a>
  <!-- Short description: -->
  <h3>Main Repo for the BREAD Project.</h3>
</div>


## Introduction
This project is fully documented in the paper: Shane Oberloier, Nicholas G. Whisman, Finn Hafting, Joshua M. Pearce, Open Source Framework for a Broadly Expandable and Reconfigurable Data Acquisition and Automation Device (BREAD), ''HardwareX'', 2023, e00467, [doi.org/10.1016/j.ohx.2023.e00467](https://doi.org/10.1016/j.ohx.2023.e00467).

This project has since grown and evolved, start by reading the [docs](docs/README.md)

## Project Overview

| Name | Type | Current Revision |
| --- | --- | --- |
| [Slice_TEMP](https://github.com/uwo-fast/Slice_TEMP) | Template | Rev |
| [Loaf_ESPT](https://github.com/uwo-fast/Loaf_ESPT) | Management | Rev |
| [Loaf_x004](https://github.com/uwo-fast/Loaf_x004) | Management | Rev |
| [Slice_GDHB](https://github.com/uwo-fast/Slice_GDHB) | Actuation | Rev |
| [Slice_DCMT](https://github.com/uwo-fast/Slice_DCMT) | Actuation | Rev |
| [Slice_PUMP](https://github.com/uwo-fast/Slice_PUMP) | Actuation | Rev |
| [Slice_RLAY](https://github.com/uwo-fast/Slice_RLAY) | Actuation | Rev |
| [Slice_SERV](https://github.com/uwo-fast/Slice_SERV) | Actuation | Rev |
| [Slice_STEP](https://github.com/uwo-fast/Slice_STEP) | Actuation | Rev |
| [Slice_USBP](https://github.com/uwo-fast/Slice_USBP) | Communication | Rev |
| [Slice_HEAT](https://github.com/uwo-fast/Slice_HEAT) | Integrated | Rev |
| [Slice_RLHT](https://github.com/uwo-fast/Slice_RLHT) | Integrated | Rev |
| [Slice_BUCK](https://github.com/uwo-fast/Slice_BUCK) | Power | Rev |
| [Slice_SOLR](https://github.com/uwo-fast/Slice_SOLR) | Power | Rev |
| [Slice_AAFT](https://github.com/uwo-fast/Slice_AAFT) | Sensing | Rev |
| [Slice_CR10](https://github.com/uwo-fast/Slice_CR10) | Sensing | Rev |
| [Slice_CR20](https://github.com/uwo-fast/Slice_CR20) | Sensing | Rev |
| [Slice_CR40](https://github.com/uwo-fast/Slice_CR40) | Sensing | Rev |
| [Slice_HPTC](https://github.com/uwo-fast/Slice_HPTC) | Sensing | Rev |
| [Slice_LOAD](https://github.com/uwo-fast/Slice_LOAD) | Sensing | Rev |
| [Slice_LVAI](https://github.com/uwo-fast/Slice_LVAI) | Sensing | Rev |
| [Slice_AOEM](https://github.com/uwo-fast/Slice_AOEM) | Sensing | Rev |
| [Slice_ACAR](https://github.com/uwo-fast/Slice_ACAR) | Sensing | Rev |
| [Slice_THRM](https://github.com/uwo-fast/Slice_THRM) | Sensing | Rev |
  
## Installation
[Provide instructions for installing any necessary software or hardware components.]

## Usage
[Explain how to use the project. Include examples and screenshots if applicable.]

### Basic Usage
[Provide basic usage instructions.]

### Advanced Usage

To create a BREAD development folder with all the repositories making up the framework use the following script. Start by installing the requests and GitPython packages:
```
pip install requests gitpython
```
Then download run [this script](scripts/cloneAllBREAD.py) which will clone all the required repos into a folder called BREAD_DEV (including this one):
```
python cloneAllBREAD.py
```
Before running the script replace YOUR_TOKEN_HERE at the top of the file with a GitHub access token with permissions for accessing organizations and manipulating repositories.

## Documentation
[Link to the detailed documentation if available. Provide instructions on how to access and navigate the documentation.]

## Contributing

- ✅ Done
- 🛠️ In Progress
- ❌ Incomplete
- ❓ Unknown

| Name | Schematic | Board | BOM | Firmware | Tested |
| --- | --- | --- | --- | --- | --- |
| [Slice_TEMP](https://github.com/uwo-fast/Slice_TEMP) |  |  |  |  |  |
| [Loaf_ESPT](https://github.com/uwo-fast/Loaf_ESPT) |  |  |  |  |  |
| [Loaf_x004](https://github.com/uwo-fast/Loaf_x004) |  |  |  |  |  |
| [Slice_GDHB](https://github.com/uwo-fast/Slice_GDHB) |  |  |  |  |  |
| [Slice_DCMT](https://github.com/uwo-fast/Slice_DCMT) |  |  |  |  |  |
| [Slice_PUMP](https://github.com/uwo-fast/Slice_PUMP) |  |  |  |  |  |
| [Slice_RLAY](https://github.com/uwo-fast/Slice_RLAY) |  |  |  |  |  |
| [Slice_SERV](https://github.com/uwo-fast/Slice_SERV) |  |  |  |  |  |
| [Slice_STEP](https://github.com/uwo-fast/Slice_STEP) |  |  |  |  |  |
| [Slice_USBP](https://github.com/uwo-fast/Slice_USBP) |  |  |  |  |  |
| [Slice_HEAT](https://github.com/uwo-fast/Slice_HEAT) |  |  |  |  |  |
| [Slice_RLHT](https://github.com/uwo-fast/Slice_RLHT) |  |  |  |  |  |
| [Slice_BUCK](https://github.com/uwo-fast/Slice_BUCK) |  |  |  |  |  |
| [Slice_SOLR](https://github.com/uwo-fast/Slice_SOLR) |  |  |  |  |  |
| [Slice_AAFT](https://github.com/uwo-fast/Slice_AAFT) |  |  |  |  |  |
| [Slice_CR10](https://github.com/uwo-fast/Slice_CR10) |  |  |  |  |  |
| [Slice_CR20](https://github.com/uwo-fast/Slice_CR20) |  |  |  |  |  |
| [Slice_CR40](https://github.com/uwo-fast/Slice_CR40) |  |  |  |  |  |
| [Slice_HPTC](https://github.com/uwo-fast/Slice_HPTC) |  |  |  |  |  |
| [Slice_LOAD](https://github.com/uwo-fast/Slice_LOAD) |  |  |  |  |  |
| [Slice_LVAI](https://github.com/uwo-fast/Slice_LVAI) |  |  |  |  |  |
| [Slice_AOEM](https://github.com/uwo-fast/Slice_AOEM) |  |  |  |  |  |
| [Slice_ACAR](https://github.com/uwo-fast/Slice_ACAR) |  |  |  |  |  |
| [Slice_THRM](https://github.com/uwo-fast/Slice_THRM) |  |  |  |  |  |

### Code of Conduct
[Link to the project's code of conduct if available.]

## License
[State the license under which the project is distributed. Include a link to the full license text.]

## Acknowledgements
[Acknowledge any contributors, collaborators, funding sources, or organizations that supported the project.]

## Contact
[Provide contact information for the project maintainer(s) or lead researcher(s). Include an email address or a link to a contact form.]

---

<div align="center">
  <p>
    <img src="https://img.shields.io/badge/Developed_by-UWO--FAST-orange" alt="Developed by UWO-FAST">
    <img src="https://img.shields.io/badge/Powered_by-Open_Source-blue" alt="Powered by Open Source">
  </p>
</div>
