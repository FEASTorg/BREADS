# Design Contraints

This is for classic two layer boards BREADS has originally been constrained to.

## General PCB Constraints

| **Parameter**                      | **Constraint**                      |
| ---------------------------------- | ----------------------------------- |
| PCB Dimensions                     | 100 mm x 70 mm                      |
| Mounting Hole Size                 | M3 bolts, 5 mm inset at each corner |
| Minimum Trace Size                 | 0.5 mm                              |
| Minimum Feature Spacing            | 0.2 mm                              |
| Pad Copper Width                   | Greater than 0.5 mm                 |
| Recommended Component Package Size | 1206 or greater \*                  |

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
