module existingMount() {
    module m2rod() {
        translate([30,235,-10]) { rotate([90,90,0]) { rod2(); } }
    translate([50,235,-10]) { rotate([90,90,0]) { rod2(); } }
}
module rod2() {
    cylinder(400,3.5,4.5,true);
}
module otherCarridge() {
    difference() {
        translate([215,175,5]) {
            cube([50,40,45]); 
            translate([25,0,0]) { 
                difference() {
                    cube([15,40,55]); 
                    translate([6,-1,1]) { cube([2,50,55]); }
                }
            }
        }
        translate([214.9,183.5,38.1]) {color([1,0,0]) {
        cube([16,23,12]);
        }}
        
        translate([200,17.5,25]) { m2rod();}
        translate([200,17.5,25]) { m2rod();}
    }
    
    
}

translate([-204.5,-175,-5]) { otherCarridge(); }
}

// existingMount();

module support_bracket() {
difference() {
    cube([12,8.5,45]);
    
    translate([-0.50,-0.5,10]) { cube([7,9.5,25]); }
    
    translate([3,4,5]) {cylinder(45,1.5,1.5,false);}
    translate([10,-1,33]) { cube([3,10,12.1]); }
}
}



module penCarrier() {
difference() {
translate([-0.0,-0,20]) { cube([6,40.5,7.5]); }
translate([3,4,5]) {cylinder(45,1.5,1.5,false);}
translate([3,35.5,5]) {cylinder(45,1.5,1.5,false);} 
}
difference() {
translate([0,9.5,25]) { cube([9,21,15]); }
translate([-1,20,40]) {rotate([0,90,0]) { cylinder(11,10,10,false); }}
}
translate([-10,20,30]) { importedMount(); }
}

penCarrier();
/*
support_bracket();
translate([0,31.5,0]) {
    
    support_bracket();
}*/


module importedMount() {
    difference() {
cube([21,21,20], true); 
cylinder(120,7.5,7.5, true);

translate([0,0,4.5]) {rotate([90,90,0]) { cylinder(40,1.5,1.5, true);}}
translate([0,0,-4.5]) {rotate([90,90,0]) { cylinder(40,1.5,1.5, true);}}
}
}