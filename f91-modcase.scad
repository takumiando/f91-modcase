$fn=240;

module body() {
    hull() {
        /* Bottom */
        translate([1, 1, 1])
            sphere(1);

        translate([29, 1, 1])
            sphere(1);

        translate([1, 39, 1])
            sphere(1);

        translate([29, 39, 1])
            sphere(1);

        /* Middle */
        translate([1, 1, 3])
            sphere(1);

        translate([29, 1, 3])
            sphere(1);

        translate([1, 39, 3])
            sphere(1);

        translate([29, 39, 3])
            sphere(1);

        /* Top */
        translate([1, 6, 4])
            sphere(1);

        translate([29, 6, 4])
            sphere(1);

        translate([1, 34, 4])
            sphere(1);

        translate([29, 34, 4])
            sphere(1);
    }
}

module display_hole() {
    hull() {
        translate([1, 1, 0])
            cylinder(5, 1, 1);

        translate([22, 1, 0])
            cylinder(5, 1, 1);

        translate([1, 9, 0])
            cylinder(5, 1, 1);

        translate([22, 9, 0])
            cylinder(5, 1, 1);
    }
}

difference() {
    translate([0, 0, 0])
        body();

    translate([3.5, 15, 0])
        display_hole();

    /* Back cover */
    translate([15, 20, -1]) {
        cylinder(5, 13, 13);
        cube([22, 22, 5], center = true);
    }

    /* Belt */
    rotate([0, 90, 0]) {
        /* Lower */
        translate([0, 0, 6])
            cylinder(18, 3, 3);
        translate([-1, 1, 5])
            cylinder(20, 0.6, 0.6);

        /* Upper */
        translate([0, 40, 6])
            cylinder(18, 3, 3);
        translate([-1, 39, 5])
            cylinder(20, 0.6, 0.6);
    }
}
