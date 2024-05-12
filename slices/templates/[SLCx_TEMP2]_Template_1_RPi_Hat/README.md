Raspberry Pi B+ Hat
============================

Expansion Board
----------------------------

This is a project template for a 
[Raspberry Pi B+ Hat](https://github.com/raspberrypi/hats).

This base project includes a PCB edge defined according to 
[this specification](https://github.com/raspberrypi/hats/blob/master/hat-board-mechanical.pdf).
Both a thru-hole and a surface mount connector are provided, along with a different
PCB edge for each. Just keep the PCB edge and connector type that you're using for your design
and delete the others.

The board outline looks like this:

<img src="brd.png" style="width:25%">

Using the Template
----------------------------

To use the Raspberry Pi Hat template with the through-hole connector, do the following:

1. Open the schematic. Remove the SMD connector, J1.
2. Update the schematic to reflect the removal of the SMD connector and open the PCB.
3. Find the connector to be removed. Hover your mouse over it and hit **e** to edit. Select the J1 SMD connector. In the **Footprint Properties** window, ensure the connector is set to **Free** under the **Move and Place** section. Click **OK** to unlock it.
4. Delete the SMD connector from the PCB layout.
5. Re-import the updated schematic to the PCB layout. Make sure to select the **Update PCB** option to apply changes. The J1 SMD connector should not reappear.
6. Finally, delete the upper two arcs and the edge of the board outline.

To use the Raspberry Pi Hat template with the SMD connector, do the following:

1. Open the schematic. Remove the through-hole connector, J2.
2. Update the schematic to reflect the removal of the through-hole connector and open the PCB.
3. Hover your mouse over the connector to be removed and hit **e** to edit it. Select the J2 through-hole connector. In the **Footprint Properties** window, make sure it is set to **Free** in the **Move and Place** section. Click **OK** to unlock.
4. Delete the through-hole connector from the PCB layout.
5. Re-import the updated schematic to the PCB layout. Ensure you choose the **Update PCB** option to apply changes. The J2 through-hole connector should not reappear.
6. Finally, delete the lower two arcs and the edge of the board outline.

(c)2015-2021 Dave Vandenbout.
(c)2023-2024 Cameron Brooks.