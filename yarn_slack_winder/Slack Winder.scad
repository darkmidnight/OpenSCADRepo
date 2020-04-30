module motor() {
cylinder(h=45.01,r1=15,r2=15,center=true);
    translate([0,0,1.5]){ cylinder(h=48,r1=5,r2=5,center=true);}
}

module motorCase() {
    translate([0,0,-15]) {
    cube([35,45,15], true);
    }
    cube([35,35,44.9], true);
}
module motorMount() {
    difference() {
        motorCase();
        motor();
        rotate([0,90,0]) { translate([15,18,0]) { cylinder(h=45,r1=2,r2=2,center=true); }}
        rotate([0,90,0]) { translate([15,-18,0]) { cylinder(h=45,r1=2,r2=2,center=true); }}
    }
}



module motorRubber() {
cylinder(h=45,r1=11,r2=11,center=true);
}
module secondRubber() {
cylinder(h=45,r1=11,r2=11,center=true);
}
module supportingRod() {
    cylinder(h=65,r1=4.1,r2=4.1,center=true);
}
module rubbersAndRods() {
translate([0,0,-48]){ motorRubber();
    supportingRod();}
translate([-24,0,-48]){
    secondRubber();
    supportingRod();
    }
}

module bracket() {
    difference() {
    cube([12,12,12],true);
    rotate([90,0,0]) { supportingRod(); }
    }
    translate([0,0,3.5]) {
        difference() {
    cube([45,12,5],true);
    translate([18,0,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }
    translate([-18,0,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }
    
    rotate([90,0,0]) translate([0,-2,0]) { { supportingRod(); }}
    
}
    }
}

module otherSide() {
    difference() {
    translate([-2,0,-78]) {
    cube([39,45,12], true);
    }
    translate([0,0,-78]) {
    cube([45.1,15,12.1], true);
    }
    translate([0,0,-63]) {
     rotate([0,90,0]) { translate([15,18,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }}
        rotate([0,90,0]) { translate([15,-18,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }}
    }
}

difference() {
    translate([5,0,-78]) {
    cube([25,45,12], true);
    }
    translate([0,0,-78]) {
    supportingRod();
    }
    
    translate([0,0,-63]) {
     rotate([0,90,0]) { translate([15,18,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }}
        rotate([0,90,0]) { translate([15,-18,0]) { cylinder(h=45,r1=2.1,r2=2.1,center=true); }}
    }
}
    

}


color([0,0,1]) {
translate([0,-15,25]) { bracket(); }
translate([0,-78,25]) { bracket(); }
}
rotate([270,90,0]) {
    color([0.5,0.5,0.5]) {
 rubbersAndRods();
    };
 color([1,0,0]) {motorMount(); }
otherSide();   
}

    
module base() {
    translate([-30,0,-17]) {
    //cube([110,35,10], true);
    }
    translate([1.3,0,0]) {
      motorCase();
    }
    translate([-15.5,0,-5]) {
        translate([0.5,23,5]) {
        cube([14,11,30],true);
        }
        translate([0,-12,5]) {
        cube([14,11,42],true);
        }
    }
    translate([-78,0,-5]) {
        cube([14,14,22],true);
        translate([0,12,5]) {
        cube([14,11,42],true);
        }
        translate([0,-12,5]) {
        cube([14,11,42],true);
        }
    }
    
}

module topOutsideBracket() {
    translate([-78,0,24]) {
        bracket();
    }
    translate([-15.5,0,24]) {
        bracket();
    }
}






