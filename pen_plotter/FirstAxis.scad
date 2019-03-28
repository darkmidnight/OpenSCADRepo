
module motorBracket() {
    difference() {
    cube([100,100,30]);
    
    translate([40.01,17,6.01]) {
    cube([60,66,24]);
    }
    }
    translate([85,17,5]) {cube([15.01,25,10]);}
    translate([0,83,30]) { cube([100,17,20]);}
    translate([0,0,30]) { cube([100,17,20]);}
}
module rod() {
    cylinder(433,4,4,true);
}
module rod2() {
    cylinder(400,3.5,4.5,true);
}



module endBracket() {
translate([400,0,0]) { cube([20,17,50]);cube([20,100,12]);}
translate([400,83,0]) { cube([20,17,50]);}
translate([400,0,0]) { cube([00,100,30]); }
}


module carridge() {
    translate([200,0,5]) { cube([20,17,45]);cube([20,100,7]);}
    translate([200,83,5]) { cube([20,17,45]);}
    translate([200,0,0]) { cube([00,100,30]); }
    difference() { 
    translate([200,17,5]) {cube([20,20,20]);}
    translate([199,27,5]) {cube([22,2,21]);}
    }
}

module firstAxis() {
difference() {
    motorBracket();
    translate([-35,-10,-20]) { cube([60,120,80]);}
}
//216.5 is the edge of the mount
translate([221.5,8.5,40]) { rotate([0,90,0]) { rod(); } }
translate([221.5,91.5,40]) { rotate([0,90,0]) { rod(); } }

endBracket();
carridge();
translate([60,0,0]) { carridge(); }
}