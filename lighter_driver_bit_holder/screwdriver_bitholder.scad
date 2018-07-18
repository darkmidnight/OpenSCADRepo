rotate([90,0,0]) {
    difference() {
color([1,0,0]) {cube([36,11,35], center=true);}
translate([-13.5,0,15]) { cylinder($fn=6,20,4.25,4.25,true); }
translate([-4.5,0,15]) { cylinder($fn=6,20,4.25,4.25,true); }
translate([4.5,0,15]) { cylinder($fn=6,20,4.25,4.25,true); }
translate([13.5,0,15]) { cylinder($fn=6,20,4.25,4.25,true); }
translate([21,0,-25]) { rotate([0,0,45]) { cube([10,10,60]); }}
translate([-21,0,-25]) { rotate([0,0,45]) { cube([10,10,60]); }}
rotate([0,90,0]) {
    translate([13,5,0]) { cube([7,16,27],true); }
    translate([6.1,5,0]) { cube([7,16,27],true); }
    translate([-0.85,5,0]) { cube([7,16,27],true); }
}
}


}