$fn = $preview ? 64 : 128;
zFite = $preview ? 0.1 : 0;

slice_length = 100;
slice_width = 70;
slice_thickness = 1.6;
slice_corner_radius = 5;
slice_hole_diameter = 5;
slice_hole_edge_offset = 5;

case_wall_thickness = 2;
case_height = 10;
case_hole_diameter = 2.2;

case_allowance = 0.2; // allowance for fitting PCB into case

module slice_pcb(height=slice_thickness, allowance=0) {
    _width = slice_width + 2 * allowance;
    _length = slice_length + 2 * allowance;
    _height = height;
    _hole_diameter = slice_hole_diameter + allowance;
  difference() {
    union() {
      difference() {

        // main body
        cube([_width, _length, height], center=true);

        // cut from corners
        for (i = [0:3]) {
          translate(
            [_width / 2 * (i % 2 == 0 ? 1 : -1), _length / 2 * (floor(i / 2) == 0 ? 1 : -1), 0]
          )
            cube([slice_corner_radius * 2, slice_corner_radius * 2, height * 1.1], center=true);
        }
      }

      // corners
      for (i = [0:3]) {
        translate(
          [
            (_width / 2 - slice_corner_radius) * (i % 2 == 0 ? 1 : -1),
            (_length / 2 - slice_corner_radius) * (floor(i / 2) == 0 ? 1 : -1),
            0,
          ]
        ) cylinder(h=height, r=slice_corner_radius, center=true);
      }
    }
    // holes
    for (i = [0:3]) {
      translate(
        [
          (slice_width / 2 - slice_hole_edge_offset) * (i % 2 == 0 ? 1 : -1),
          (slice_length / 2 - slice_hole_edge_offset) * (floor(i / 2) == 0 ? 1 : -1),
          0,
        ]
      ) cylinder(h=height + zFite, r=_hole_diameter / 2, center=true);
    }
  }
}

module slice_case_base() {
  _width = slice_width + 2 * case_wall_thickness + case_allowance * 2;
  _length = slice_length + 2 * case_wall_thickness + case_allowance * 2;
  _height = case_height + case_wall_thickness + case_allowance;

  difference() {
    union() {
      difference() {

        // main body
        cube([_width, _length, _height], center=true);

        // cut from corners
        for (i = [0:3]) {
          translate(
            [_width / 2 * (i % 2 == 0 ? 1 : -1), _length / 2 * (floor(i / 2) == 0 ? 1 : -1), 0]
          )
            cube([slice_corner_radius * 2, slice_corner_radius * 2, _height * 1.1], center=true);
        }
      }

      // corners
      for (i = [0:3]) {
        translate(
          [
            (_width / 2 - slice_corner_radius) * (i % 2 == 0 ? 1 : -1),
            (_length / 2 - slice_corner_radius) * (floor(i / 2) == 0 ? 1 : -1),
            0,
          ]
        ) cylinder(h=_height, r=slice_corner_radius, center=true);
      }
    }
    // holes
    for (i = [0:3]) {
      translate(
        [
          (slice_width / 2 - slice_hole_edge_offset) * (i % 2 == 0 ? 1 : -1),
          (slice_length / 2 - slice_hole_edge_offset) * (floor(i / 2) == 0 ? 1 : -1),
          0,
        ]
      ) cylinder(h=_height + zFite, r=case_hole_diameter / 2, center=true);
    }

    // cutout for PCB
    translate([0, 0, case_wall_thickness - case_allowance / 2])
      slice_pcb(height=_height - case_wall_thickness + case_allowance, allowance=case_allowance);
  }
}

slice_case_base();
