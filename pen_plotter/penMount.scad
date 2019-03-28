difference() {
cube([21,21,50], true); 
cylinder(120,6.5,6.5, true);

translate([0,0,10]) {rotate([0,90,0]) { cylinder(40,1.5,1.5, true);}}
translate([0,0,-10]) {rotate([0,90,0]) { cylinder(40,1.5,1.5, true);}}

translate([0,8.6,0]) {
    cube([4,4,29], true); 
    rotate([90,0,0]) { cylinder(4,3.5,3.5, true);}
}
}