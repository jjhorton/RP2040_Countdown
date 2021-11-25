

//linear_extrude(height = 5, center = true)
//    square([45,32],true);
    
extend = 2;
tolerance = 0.5;
height = 6;

left_disp = 55;
right_disp = 110;
    
difference(){
    difference() {
        cube([50+2*extend,37+2*extend,height],true);
        translate([0,0,1.5]) 
            cube([50 +tolerance*2,37+tolerance*2,height],true);
    }
    {
    translate([22.5,16,-4.1]) 
        cylinder(h = 6,r = 2, centre=true);
    translate([22.5,-16,-4.1]) 
        cylinder(h = 5,r = 2, centre=true);
    translate([-22.5,16,-4.1]) 
        cylinder(h = 5,r = 2, centre=true);
    translate([-22.5,-16,-4.1]) 
        cylinder(h = 5,r = 2, centre=true);
        
    }
}
difference() {
    translate([92,0,0])
        cube([132,37+2*extend,height],true);
    {translate([85,0,1.5]) 
        cube([102,20,height],true);
        translate([left_disp+10,-17,2.5])
        linear_extrude(height = 1) {
            text("Mb/s", font = "Liberation Sans:style=Bold", size = 4, direction = "ltr", spacing = 1 );
    };
    translate([right_disp+5,-17,2.5])
        linear_extrude(height = 1) {
            text("Mb/s", font = "Liberation Sans:style=Bold", size = 4, direction = "ltr", spacing = 1 );
    };
    }
}

difference(){
    translate([65.5,24,0]) 
        cube([131+50+2*extend,10,height],true);
    translate([115,24,2.5])    
        linear_extrude(height = 1) {
            text("@JamesjHorton", font = "Liberation Sans:style=Italic", size = 4, direction = "ltr", spacing = 1 );};
    }

screw_holes = 2.4/2;
post_size = 4;
$fn=100;
recess = 1.6;

difference(){
    translate([23,16.5,-1.5]) 
        cylinder(h = height-recess-1,r = post_size, centre=true);
    translate([22.5,16,-5]) 
        cylinder(h = 10,r = screw_holes, centre=true);
   
}

difference(){
    translate([23,-16.5,-1.5]) 
        cylinder(h = height-recess-1,r = post_size, centre=true);
    translate([22.5,-16,-5]) 
        cylinder(h = 10,r = screw_holes, centre=true);
}

difference(){
    translate([-23,16.5,-1.5]) 
        cylinder(h = height-recess-1,r = post_size, centre=true);
    translate([-22.5,16,-5]) 
        cylinder(h = 10,r = screw_holes, centre=true);
}

difference(){
    translate([-23,-16.5,-1.5]) 
        cylinder(h = height-recess-1,r = post_size, centre=true);
    translate([-22.5,-16,-5]) 
        cylinder(h = 10,r = screw_holes, centre=true);
}


translate([right_disp,14,0])
    linear_extrude(height = 4) {
        text("Upload", font = "Liberation Sans", size = 5, direction = "ltr", spacing = 1 );
    }; 

    
translate([left_disp,14,0])
    linear_extrude(height = 4) {
        text("Download", font = "Liberation Sans", size = 5, direction = "ltr", spacing = 1 );
    }; 
/* translate([left_disp+10,-17,0])
    linear_extrude(height = 4) {
        text("Mb/s", font = "Liberation Sans", size = 3, direction = "ltr", spacing = 1 );
    };
  */  
/*translate([127,24,0])
    linear_extrude(height = 4) {
        text("@JamesjHorton", font = "Liberation Sans", size = 3, direction = "ltr", spacing = 1 );};
*/