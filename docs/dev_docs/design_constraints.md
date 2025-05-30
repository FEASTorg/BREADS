# Design Contraints

## General PCB Constraints

| **Parameter**                      | **Constraint**                      |
| ---------------------------------- | ----------------------------------- |
| PCB Dimensions                     | 100 mm x 70 mm                      |
| Mounting Hole Size                 | M3 bolts, 5 mm inset at each corner |
| Minimum Trace Size                 | 0.5 mm                              |
| Minimum Feature Spacing            | 0.2 mm                              |
| Pad Copper Width                   | Greater than 0.5 mm                 |
| Recommended Component Package Size | 1206 or greater \*                  |

\* see table at end for info on package sizes

## Component Placement and Sizing Constraints

| **Parameter**                | **Constraint**                                                                                                         |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| Standard Component Placement | Components should have clearance for easy soldering and heat dissipation                                               |
| Through-hole Components      | Should remain on the top layer                                                                                         |
| Surface-mount Components     | Should be flipped to the bottom layer                                                                                  |
| Component Sizing Constraints | Components should be grouped by sub-circuit, with large components on the top layer and clearance for heat dissipation |
| Standard Components          | Arduino Nano, interface connector, power filtering capacitors                                                          |

## Routing and Layer Constraints

| **Parameter**                     | **Constraint**                                                                                                    |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Routing for Single-layer Boards   | All routing on the bottom layer                                                                                   |
| Vias for Two-layer Boards         | Aim to keep traces on bottom later; use large enough vias (1 mm) with pads to allow for wire bridges if necessary |
| Power Planes for Two-layer Boards | Ground plane on top, dominant supply voltage on the bottom layer                                                  |
| Plane Usage                       | Minimize use of planes due to redundant milling issues with CAM software                                          |

## Labeling and Configuration Constraints

| **Parameter**            | **Constraint**                                                                                              |
| ------------------------ | ----------------------------------------------------------------------------------------------------------- |
| Jumper Configuration     | Clearly labeled, with a recommended configuration table                                                     |
| Labeling Requirements    | All device designators should be in the same orientation, clear labeling for all connectors and test points |
| Loaf Interface Connector | Standard 10-pin female header centered on the left side of the PCB                                          |
| External Connector Pitch | 2.54 mm (0.1")                                                                                              |

## Manufacturing and Compatibility Constraints

| **Parameter**                        | **Constraint**                                                                         |
| ------------------------------------ | -------------------------------------------------------------------------------------- |
| Digital Manufacturing Compatibility  | Boards should be manufacturable on commonly available circuit milling machines         |
| Mechanical Definition - Slice Casing | 3D printed, solid infill, layer height under 0.5 mm                                    |
| Emergency Stop Interlock Chain       | Must be wired such that "open state" indicates the device should be in an E-Stop State |
| Component Selection                  | Prefer through-hole, socket-able chips for easy soldering and replacement              |

## Component Footprint Sizes

The numbers in the **Imperial** and **Metric** columns refer to the dimensions of the component package in thousandths of an inch (Imperial) and tenths of a millimeter (Metric), respectively. For example: **0402 (Imperial) / 1005 (Metric):** This package size is 0.04 inches (1.0 mm) long and 0.02 inches (0.5 mm) wide. This should give a sense of physical size when assigning footprints to a schematic.

| **Footprint (Imperial)** | **Footprint (Metric)** | **Acceptable for BREADS** | **Comment**                                                                            |
| ------------------------ | ---------------------- | ------------------------- | -------------------------------------------------------------------------------------- |
| 0402                     | 1005                   | No                        | Very small; difficult to solder manually; not recommended for DIY projects.            |
| 0603                     | 1608                   | Sometimes                 | Small; acceptable for some advanced DIY but not ideal for ease of assembly.            |
| 0805                     | 2012                   | Yes                       | Preferred minimum size for BREADS; better than 0603 but still small for DIY soldering. |
| 1206                     | 3216                   | Yes                       | Very easy to handle and solder manually.                                               |
| 1210                     | 3225                   | Yes                       | Slightly larger than 1206; still easy to solder, provides better thermal dissipation.  |
| 1812                     | 4532                   | Yes                       | Larger footprint; good for power components or higher current requirements.            |
| 2220                     | 5650                   | Yes                       | Very large; suitable for high power, larger components.                                |

## Silkscreen Color Chart

| **Category**    | **Color** | **Use**                                                  | **Rationale**                                                                             | **Examples**                             |
| --------------- | --------- | -------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------------- |
| **Prototype**   | Blue      | 2-layer prototype boards                                 | Distinctive color used to differentiate prototype versions.                               | DCMT, RLHT                               |
|                 | Red       | 4-layer prototype boards                                 | High contrast with white silkscreen enables easier debugging and inspection.              | SOLR, FPSG                               |
|                 | Yellow    | Carrier/adapter boards                                   | Unique appearance for quick visual identification in a mixed batch of prototypes.         | Atlas Sci. pH/DO/ORP/EC, can-nano-shield |
| **Production**  | Green     | 2-layer production boards                                | Standard choice for production due to reliability, low cost, and ease of inspection.      | DCMT, RLHT                               |
|                 | Black     | 4-layer production boards                                | Offers a professional and aesthetic look, indicating complexity for consumer electronics. | SOLR, FPSG                               |
|                 | Purple    | Carrier/adapter boards for production (special editions) | Differentiates special editions or unique branding from standard production runs.         | Atlas Sci. pH/DO/ORP/EC, can-nano-shield |
| **Special Use** | White     | Boards requiring high light reflection or exposed boards | Chosen for aesthetics and applications needing enhanced light reflection properties.      | LED boards, exposed boards               |
