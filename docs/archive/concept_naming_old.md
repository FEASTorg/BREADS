## Conceptual Design

- **SLICE**

  - Each PCB performs a single function
  - This is referred to as a **SLICE** which stands for _Single-function Logic Interface Controller Element_
  - **Example:** A temperature sensor PCB with a power switch that reads temperature data and applies a control signal to the switch.

- **LOAF**

  - Multiple SLICEs can be connected to create a system via a shared communication and power bus with one designated leader to create a system from number of function cards to perform some discrete process
  - This is referred to as a **LOAF** which stands for _Locally Operated Automation Framework_
  - **Example:** A small system that made up of a number of SLICEs with one acting as the leader to coordinate their functions for a localized process—e.g., a temperature controller, motor controller, and pH sensor working together to run a bioreactor.

- **BATCH**

  - Multiple LOAF subsystems can be connected to a (micro)computer via interfacing with the leader SLICE of each LOAF to aggregate and coordinate multiple processes to perform some abstract process and connect to a wider network
  - This is referred to as **BATCH** which stands for _Bridged Architecture for Task Control & Handling_
  - **Example:** A microcomputer managing multiple LOAFs (e.g., one for a mechanical shredder, one for a chemical reactor, and one for a bioreactor,) to create a plastic upcycling system that converts PET waste into edible microbial protein.

- **OVEN**

  - Multiple (micro)computers can be networked in a leader-worker configuration to achieve some business / organizational goal
  - This is referred to as **OVEN** which stands for _Orchestrated Versatile Embedded Network_
  - **Example:** A distributed recycling and manufacturing system where multiple microcomputers, each managing different BATCH nodes (e.g., plastic upcycling, intermediate conveyor systems, and quality control sensors), coordinate through a central server to optimize production.
