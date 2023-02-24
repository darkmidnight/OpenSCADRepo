$aluId = 14; // inner diameter of aluminum tube
difference() {
    cylinder(30,$aluId/2,$aluId/2,$fn=100);
    translate([0,0,-1]) {cylinder(20,5.75, 5.75,$fn=100);}
    cylinder(50,3.25, 3.25,$fn=6);
    translate([0,15,25]){ rotate([90,90,0]) { cylinder(30, 1, 1, $fn=100); } }
    translate([0,-5.75,25]){ rotate([90,90,0]) { cylinder(30, 1.5, 1.5, $fn=100); } }    
    rotate([0,0,180]) { translate([0,-5.75,25]){ rotate([90,90,0]) { cylinder(30, 1.5, 1.5, $fn=100); } } }
}
