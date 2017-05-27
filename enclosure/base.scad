height=3;
diameter=48;
thickness=1.5;
resolution=120;

difference() {
    lid();
    translate([0,0,thickness]) cylinder(h=7, r=diameter/2-thickness*2, $fn=resolution);
}

module lid() {
cylinder(h=height, r=diameter/2, $fn=resolution);
translate([0,0,thickness]) cylinder(h=5, r=diameter/2-thickness-.4, $fn=resolution);
}