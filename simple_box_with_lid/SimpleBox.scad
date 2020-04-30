module simpleCase($w, $h, $d) {
    
difference() {
    cube([$w+5,$h+5,$d+5], center=true);
    cube([$w,$h,$d], center=true);
    translate([0,0,$d-0.01]) {
        cube([$w+7,$h+7,$d], center=true);
    }
}

}

module main() {
difference() {
simpleCase(40,60,40);
translate([0,28.9,-12]) {cube([23.5,8.5,17], center=true);}
translate([0,-20,-18]) {
cube([30,14,10], center=true);
}
}
difference() {
translate([0,5,-12]) { cube([40,8,18],center=true); }
translate([0,5,-11.9]) { cube([23.5,8.5,18], center=true); }
}



difference() {
translate([0,26,-12]) { cube([40,8,18],center=true); }
translate([0,26.1,-11.9]) { cube([23.5,8.5,18], center=true); }
}
}
 

/** The container for the rangefinder **/
module electronicsBox() {
difference() {
    main();
translate([1,0,11]) {

translate([-15,25,-8.5]) {
rotate([90,0,0]) {cylinder(h=25,r1=3,r2=3,center=true);}
}

translate([0,28,-3]) {cube([12,7,5]);}
translate([10,-25,2]) {
rotate([90,0,0]) { cylinder(h=25,r1=2,r2=2,center=true); }
}
}
}
}