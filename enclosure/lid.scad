height=27;
diameter=48;
thickness=1.5;
resolution=120;

difference() {
    cylinder(h=height, r=diameter/2, $fn=resolution);
    translate([0,0,thickness]) cylinder(h=100, r=diameter/2-thickness, $fn=resolution);
    translate([0,0,-5]) cylinder(h=100, r=16, $fn=resolution);
    rotate ([90,0,0]) translate([0,20,0]) cylinder(h=100, r=2, $fn=resolution);
}

module tab() {
    
}