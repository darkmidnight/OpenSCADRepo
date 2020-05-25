use <MCAD/boxes.scad>

$thickness = 3;
$woodW = 18;
$woodH = 12;

module base() {
translate([0,($woodH+5)/2,-10]) { roundedBox([$woodW,30+(2*$thickness)+$woodH+5,$thickness], 0.5); }
translate([0,0,0]) { roundedBox([$woodW,$thickness,20],0.5); }
translate([0,-2,0]) { roundedBox([$woodW/2,$thickness,20],0.5); }
translate([0,$woodH+5,0]) { roundedBox([$woodW,$thickness,20], 0.5); }
translate([0,$woodH+7,0]) { roundedBox([$woodW/2,$thickness,20], 0.5); }
}


module holes() {
rotate([90,0,0]) {cylinder(50,1,1,true);}
translate([0,-9,0]) { cylinder(40,1,1,true);}
translate([0,26,0]) { cylinder(40,1,1,true);}

}


difference() {
base();
    holes();
}
