use <MCAD/boxes.scad>
difference() {
    roundedBox([$fanSize, $fanSize, 5], 5, true); 
    cylinder(7,37.5,37.5,true);
    translate([35.25,35.25,0]) {cylinder(7,2,2,true);}
    translate([-35.25,-35.25,0]) {cylinder(7,2,2,true);}
    translate([-35.25,35.25,0]) {cylinder(7,2,2,true);}
    translate([35.25,-35.25,0]) {cylinder(7,2,2,true);}
}
$fanSize = 80;
$outRad = 19.75;
$coneHeight = 25;
translate([0,0,2.5]) {
    difference() {
        joiningPipe();
        translate([0,0,-2]) {cylinder($coneHeight,39.5,$outRad,false);}
        cylinder(52,$outRad,$outRad,false);
    }
}
module joiningPipe() {
    cylinder($coneHeight,40,$outRad,false);
    cylinder($coneHeight+10,$outRad+1.5,$outRad+1.5,false);    
}