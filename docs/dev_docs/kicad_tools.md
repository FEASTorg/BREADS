# KiCad Tools

## Source Control

To be able to participate in development, proper source control tools and practices must be used; hence the below applications are required.

| Name                                    | Type           | Description                                                                                                | Notes                                     |
| --------------------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------- | ----------------------------------------- |
| Git                                     | Source Control | A distributed version control system for tracking changes in source code during development.               | Required.                                 |
| GitHub                                  | Source Control | A web-based platform that provides hosting for software development version control using Git.             | Required.                                 |
| [kiri](https://github.com/leoheck/kiri) | Source Control | A visual tool for reviewing schematics and layouts of KiCad projects that are version-controlled with Git. | Required. Used to visualize source diffs. |

## Plugins

Install the following plugins from the "Plugin And Content Manager" within KiCad before starting development. The notes column indicates which are required.

| Name                                                                         | Type          | Description                                                                                                                          | Notes                                                  |
| ---------------------------------------------------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------ |
| [HierarchicalPcb](https://github.com/gauravmm/HierarchicalPcb)               | Board Design  | Tool for creating hierarchical PCB layouts, mirroring sub-schematics with unlimited nesting depth.                                   | Required.                                              |
| [freerouting](https://github.com/freerouting/freerouting)                    | Board Design  | Advanced PCB auto-router compatible with any design software using a Specctra or Electra DSN interface.                              | Required.                                              |
| [kicad-parts-placer-pcm](https://github.com/snhobbs/kicad-parts-placer-pcm)  | Board Design  | KiCad Plugin for Automatic Parts Placement.                                                                                          | Required.                                              |
| [uConfig](https://github.com/Robotips/uConfig)                               | Preprocessing | Optional, not in KiCad PCM. Datasheet pinout extractor from PDF and library Stylizer for KiCad.                                      | Only when there is no existing online for that part.   |
| [kicad-via-patterns](https://github.com/adamws/kicad-via-patterns)           | Board Design  | KiCad plugin for placing via patterns respecting clearance rules and trace width.                                                    | Optionally for when when numerous vias are required.   |
| [RF-tools-KiCAD](https://github.com/easyw/RF-tools-KiCAD)                    | Board Design  | KiCad RF tools: footprints wizard, round tracks, mask expander, via fencing.                                                         | Not in KiCad PCM. Specially for high-frequency boards. |
| [KiBuzzard](https://github.com/gregdavill/KiBuzzard)                         | Board Design  | Adaptation of the Eagle-based plugin Buzzard for KiCad, enabling easy creation of labels in various fonts with inverted backgrounds. | Specially for aesthetics.                              |
| [InteractiveHtmlBom](https://github.com/openscopeproject/InteractiveHtmlBom) | Documentation | Interactive HTML BOM generation plugin for KiCad and other PCB design software.                                                      | Goal is to use as part of KiBot                        |
| [PcbDraw](https://github.com/yaqwsx/PcbDraw)                                 | Documentation | Converts KiCad boards into nicely looking 2D drawings suitable for pinout diagrams.                                                  | Not in KiCad PCM. Goal is to use as part of KiBot      |

## External Tools

Many of these tools are for advanced/rarely used methods and/or high-level project management and technical communication and it is hence not required to install / use these if you are working purely on design.

| Name                                                          | Type          | Description                                                                                                         | Notes                                                      |
| ------------------------------------------------------------- | ------------- | ------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| [altium2kicad](https://github.com/thesourcerer8/altium2kicad) | Preprocessing | Altium to KiCad converter for PCB and schematics.                                                                   |                                                            |
| [Gingerbread](https://github.com/wntrblm/Gingerbread)         | Board Design  | Tool for converting vector artwork to KiCad PCB files that lives in your browser.                                   |                                                            |
| [gerber2blend](https://github.com/antmicro/gerber2blend)      | Analysis      | Tool for exporting PCB fabrication (Gerber) files into Blender models created by AntMicro.                          |                                                            |
| [gerber2ems](https://github.com/antmicro/gerber2ems)          | Analysis      | Tool for simulating trace signal integrity from PCB production files using openEMS.                                 |                                                            |
| [KiBot](https://github.com/INTI-CMNB/KiBot)                   | Documentation | Program for generating fabrication and documentation files for KiCad projects, with support for CI/CD environments. | Requested addition of InteractiveHtmlBom as issue on repo. |
| [kicanvas](https://github.com/theacodes/kicanvas)             | Documentation | KiCad schematic and PCB web viewer.                                                                                 | Access via [kicanvas.org](https://kicanvas.org/).          |
