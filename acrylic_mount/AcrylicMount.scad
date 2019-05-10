


translate([0,7.5,25]) {
    rotate([0,90,0]) {
        difference() {
            cylinder(20, 7.5, 7.5);
            translate([0,0,-1]) {cylinder(30, 6.5, 6.5);}
        }
    }
}
difference() {
    cube([20,15,25]);
    translate([0,7.5,25]) {
        rotate([0,90,0]) {
            translate([0,0,-1]) {cylinder(30, 6.5, 6.5);}
        }
    }
    translate([-0.1,5.25,-0.1]) {
    cube([21,4.5,26]);
    }
    translate([5,0,5]) {
        rotate([90,0,0]) {
            cylinder(33, 1.5, 1.5, true);
        }
    }
    translate([15,0,13]) {
        rotate([90,0,0]) {
            cylinder(33, 1.5, 1.5, true);
        }
    }
}
/*
module drillPressBracket() {





}

cylinder(17, 4.5, 4.5, true); //12 mil longer (so cylinder is 6 longer here)
}


}
translate([-1,20,-1]) { cube([16,22,22]); }
translate([35,20,-1]) { cube([16,22,22]); }
}}}

translate([25,0,0]) { drillPressBracket(); }
color([255,0,0]) {
translate([17,-50,45]) {  { NutHolder(); }}
}
*/