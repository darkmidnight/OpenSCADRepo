include <FirstAxis.scad>

//secondEnd();
module secondEnd() {
    difference() {
    rotate([0,0,270]) {
        translate([-200,207,5]) { cube([45,66,45]);}
        
    }
    translate([199,149,26]) { cube([25,55,35]);}
    translate([256,149,26]) { cube([25,55,35]);}   
    translate([200,17.5,25]) { m2rod();}
    translate([231,183.1,46.1]) { cube([18,17,4]);}   
    }
    difference() {
    translate([235,155,5]) {cube([10,10,55]);}   
    translate([240,155,55]) {rotate([90,0,0]) {cylinder(120,1,1,true);}}
    }
    
    
}

module motorMount2() {
    translate([16,0,-20]) {
        difference() {
        cube([48,65,20]);
            translate([-0.1,50.1,-0.1]) {
                cube([4,15,7]);
                translate([00,-50.5,0]) {cube([4,50.6,21]); }
            }
            translate([45,50.1,-0.1]) {
                cube([4,15,7]);
                translate([00,-50.5,0]) {cube([4,50.6,21]); }
            }            
            translate([3.5,-1,-1]) { cube([43,29,21]);} 

        }
    }
    translate([20.5,53,-20]) { cube([40,29,21]);} 
        
    difference() {
    cube([80,65,24]);
        translate([-0.1,-0.1,8]) {
        cube([40,45,17]);}
    }
}

module m2rod() {
        translate([30,235,-10]) { rotate([90,90,0]) { rod2(); } }
    translate([50,235,-10]) { rotate([90,90,0]) { rod2(); } }
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



 firstAxis();

color([1,0,0]) {
translate([0,70,0]) {secondEnd();}

translate([200,17.5,25]) {
   difference() {
       motorMount2();
       m2rod();
       }

}
}


otherCarridge();



