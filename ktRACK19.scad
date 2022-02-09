//
// ktRACK19
//

gap1 = 0.001;
gap2 = 0.002;
th = 2;
x = 85;
y = 65;
r = 4;
h = 40;
h2 = 1;

difference()
{
    union()
    {
        minkowski()
        {
            cube([x-r*2, y-r*2, h-h2]);
            cylinder(r=r, h=h2, $fn=50);
        }
        translate([-r, 0, 0]) cube([x, y-r, h]);
        

    }

    translate([-r+th, th, th]) cube([x-th*2, y-r, h]);
}

difference()
{
    translate([-r, th, h-30]) rotate([0, 90, 0]) cylinder(r=30, h=x, $fn=50);
    translate([-r-gap1, -y+r+th, -h]) cube([x+gap2, y-r, h*2]);
    translate([-r-gap1, 0, -h]) cube([x+gap2, y-r, h]);
}


difference()
{
    translate([-r, th, th]) cube([x, y-r-th, h/2]);
    translate([-r, 58.41, 30.2]) rotate([0, 90, 0]) cylinder(r=30, h=x, $fn=50);
}