module g3a() {
cylinder(5,4,4,false,$fn=100);
}

module body() {
translate([-6.5,0,-2.5]) { cylinder(5,6,6,false,$fn=100);}
cube([14,12,5], center=true);
translate([6.5,0,-2.5]) { cylinder(5,6,6,false,$fn=100);}
}
difference() {
body();
partA();
translate([-9,-6,1]) { rotate([0,0,70]) { cube([50,10,5]); }}
rotate([0,0,180]) { partA();
    translate([-9,-6,1]) { rotate([0,0,70]) { cube([50,10,5]); }}
    } 

}

module paperclipHole() {
translate([0,0,-5]) { cylinder(10,0.5,0.5,false,$fn=100); }
translate([6,0,-5]) { cylinder(10,0.5,0.5,false,$fn=100); }
}
module middleHole() {
translate([0,0,-5]) { cylinder(10,0.5,0.5,false,$fn=100); }
translate([4,0,-5]) { cylinder(10,0.5,0.5,false,$fn=100); }
}
module partA() {
translate([6,0,0]) {g3a();}
translate([1,0.5,0]) { rotate([0,0,45]) { paperclipHole();} }
translate([4,0,0]) { middleHole(); }
}