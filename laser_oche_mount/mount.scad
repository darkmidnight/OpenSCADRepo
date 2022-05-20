module baseShape() {
    rotate([0,90,0]) {translate([0,0,-7.5]) {cylinder(15,6,6,0,true);}}
    translate([0,0,7.5]) { cube([15,12,15],true); }
    translate([0,0,15]) { cube([15,40,7.5],true); }
}

difference() {
baseShape();
    translate([0,13,0]) { cylinder(50,3,3,0, true); }
    translate([0,-13,0]) { cylinder(50,3,3,0, true); }
    rotate([0,90,0]) { translate([0,0,-10]) {cylinder(50,3,3,0,true); }}
}

    

