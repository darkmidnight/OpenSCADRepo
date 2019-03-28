module main() {
    difference() {
    cube([85,50,25]);
    translate([-0.01,9,-3.01]) { cube([32,32,25]);}
    translate([12,4,0]) { cylinder(10,1.5,1.5,true); }    
    translate([12,44.5,0]) { cylinder(10,1.5,1.5,true); }    
}
}


module guide() {
difference() {
translate([93,0,-9.5]) { rotate([0,0,90]) { cube([50,60,12]); }}
translate([93.05,11.9,-10.05]) { rotate([0,0,90]) { cube([28.2,60.1,12.6]); }}
}
}

module body() {
main();
translate([0,0,-2.5]) { guide(); }
}

module bodyWPenHole() {
difference() {
 body();
    translate([60.1,25,12.5]) { rotate([0,90,0]) { cylinder(50,6.75,6.75, true);} }
}
}

module nozzleGuide() {
difference() {
translate([85,0,-12]) { cube([25,50,37]); }
translate([81,12.5,-13]) { cube([30,21,39]); }
}
}
     

module plotterNozzle() {
    bodyWPenHole();
    nozzleGuide();
    difference() {
    penmounts();
    rotate([0,90,0]) {translate([-32,25,58]) { 
    cylinder(120,6.75,6.75, true);
    }}
}
}

//plotterNozzle();

module penmounts() {
translate([108,13,0]) { 
cube([18,20,40]); 
}
translate([0,0,25]) { 
cube([18,50,15]); 
}
translate([50,0,25]) { 
cube([18,50,15]);
}
}
