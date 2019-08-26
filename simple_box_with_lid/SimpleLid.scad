module simpleLid($w, $h) {
translate([0,0,0]) {cube([$w+5,$h+5,2.5], center=true);}
translate([0,0,2.5]) {
    difference() {
    cube([$w,$h,2.5], center=true);
        cube([$w-5,$h-5,2.51], center=true);
    }
}
}

simpleLid(40,60);
