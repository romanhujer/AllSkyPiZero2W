/*  AllSKY CAMERA  

   Copyright (c) 2020 Roman Hujer   http://hujer.net

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,ss
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.

  Description: 

*/

use <threads.scad>


modelM = 0 ;  // Main
modelT = 0 ;// Top 
modelB = 0 ;  // Bottom
modelH = 0 ;  // Heater
modelD = 0 ;  // Holder
modelE = 1 ;  // Holder


fan = 40;  // Fan diameter 30 or 40


if ( modelM == 1 ){  //main
difference() {    

union() {
  difference() {    
   union() {
    difference() {
    union() {  //body     
       translate([0,0,-20]) metric_thread(diameter=126-0.8, pitch=4, length=20);
       translate([0,0,-55]) cylinder(h = 35, r=62,  $fn=30 );  
    }
      translate([0,0,-1.5]) cylinder(h = 1.5, r=58.5, $fn=100 );
    }
    translate([0,0,-2]) cylinder(h = 2, r=47.5, $fn=100 );
  }
   union() {
 
      translate([0,0,-55]) cylinder(h = 51, r=54, $fn=100 );
      translate([12.25,35.5,-4]) cylinder(h = 4, r=3, $fn=100 );
      translate([-7.25,35.5,-4]) cylinder(h = 4, r=4.5, $fn=100 );
      translate([0,0,-4]) cylinder(h = 4, r=23, $fn=100 );
  }
  } 
  translate([25,35,-19.4]) cylinder(h = 17.4, r=5, $fn=16 );  
  translate([-25,35,-19.4]) cylinder(h = 17.4, r=5, $fn=16 );  
  translate([-25,-35,-19.4]) cylinder(h = 17.4, r=5, $fn=16 );  
  translate([25,-35,-19.4]) cylinder(h = 17.4, r=5, $fn=16 );  
  #translate([48,-10,-21]) cube([11,20,19]);   
 
  
}  
union () {
 translate([25,35,-19.4]) cylinder(h = 19.4, r=1.3, $fn=100 );  
 translate([-25,35,-19.4]) cylinder(h = 19.4, r=1.3, $fn=100 );  
 translate([-25,-35,-19.4]) cylinder(h = 19.4, r=1.3, $fn=100 );  
 translate([25,-35,-19.4]) cylinder(h = 19.4, r=1.3, $fn=100 );  
 for  ( i = [0:15:360]){ 
     rotate ([0,0,i])translate([29,0,-4]) cylinder(h = 4, r=2, $fn=100 );
 }
 translate([36.5,-8,-42]) cube([22.5,16,21]);   
 translate([40,-0.5,-41]) cube([23,1,16]);   
 translate([40,-3,-41]) cube([23,1,16]);   
 translate([40,-5.5,-41]) cube([23,1,16]);   
 translate([40,2,-41]) cube([23,1,16]);   
 translate([40,4.5,-41]) cube([23,1,16]);   
  
 }    
}
}

if ( modelT == 1 ){  //top
translate([0,0,3])  difference() {    
 
        translate([0,0,-20]) cylinder(h = 20, r=68,  $fn=30 );  
        union() {
        translate([0,0,-22]) metric_thread(diameter=127.6, pitch=4, length=18, internal=true);
        translate([0,0,-20]) cylinder(h = 20, r=51,  $fn=360 );  
        }   
    
  }   
}

if ( modelB == 1 ){  //bottom
    
    
    

translate([0,0,-38.4]) difference() {    
union () {    
   translate([0,0,0]) cylinder(h = 4, r=53, $fn=100 );
   translate([25,35,0]) cylinder(h = 19.5, r=4, $fn=16 );  
   translate([-25,35,0]) cylinder(h = 19.5, r=4, $fn=16 );  
   translate([-25,-35,0]) cylinder(h = 19.5, r=4, $fn=16 );  
   translate([25,-35,0]) cylinder(h = 19.5, r=4, $fn=16 );  
}
    
union () {    
 translate([-8,-42.5,0]) cube([16,17,16.5]);   
 translate([-14.75,-29,0]) cylinder(h = 16.5, r=4.4, $fn=100 );
 translate([40.5,-8.5,0]) cube([13,17,16.5]);   
 translate([25,35,0]) cylinder(h = 19.5, r=1.8, $fn=100 );  
 translate([-25,35,0]) cylinder(h = 19.5, r=1.8, $fn=100 );  
 translate([-25,-35,0]) cylinder(h = 19.5, r=1.8, $fn=100 );  
 translate([25,-35,0]) cylinder(h = 19.5, r=1.8, $fn=100 );  
 translate([-11,-39,0]) cylinder(h = 4, r=0.75, $fn=100 );  
 translate([11,-39,0]) cylinder(h = 4, r=0.75, $fn=100 );  
 translate([-32.3,-23,0]) cylinder(h = 4, r=0.75, $fn=100 );  
 translate([32.3,-23,0]) cylinder(h = 4, r=0.75, $fn=100 );  
 translate([32.3,-23,0]) cylinder(h = 4, r=0.75, $fn=100 );  
 translate([22.25,27.5,0]) cylinder(h = 4, r=2, $fn=100 );  

// imbus hole
 translate([25,35,0]) cylinder(h = 3., r=3, $fn=100 );  
 translate([-25,35,0]) cylinder(h = 3, r=3, $fn=100 );  
 translate([-25,-35,0]) cylinder(h = 3, r=3, $fn=100 );  
 translate([25,-35,0]) cylinder(h = 3, r=3, $fn=100 );  
 
 if ( fan == 30 ) {
    cylinder(h = 4, r=15.5, $fn=100 );  
    translate([13,-3,0]) cube([4,6,4]);       
    translate([12,12,0]) cylinder(h = 4, r=1.1, $fn=100 );       
    translate([-12,12,0]) cylinder(h = 4, r=1.1, $fn=100 );       
    translate([12,-12,0]) cylinder(h = 4, r=1.1, $fn=100 ); 
    translate([-12,-12,0]) cylinder(h = 4, r=1.1, $fn=100 );            
  
 }
 if ( fan == 40 ) {
    cylinder(h = 4, r=20, $fn=100 );  
    translate([17,-3,0]) cube([6,6,4]);       
    translate([16,16,0]) cylinder(h = 4, r=1.3, $fn=100 );       
    translate([-16,16,0]) cylinder(h = 4, r=1.3, $fn=100 );       
    translate([16,-16,0]) cylinder(h = 4, r=1.3, $fn=100 ); 
    translate([-16,-16,0]) cylinder(h = 4, r=1.3, $fn=100 );            
 
 }


}    
}
     
}


if ( modelH  == 1 ) {   
    difference() {
union () {        
 rotate_extrude(convexity = 29, $fn = 100)
 translate([29, 0, 0]) 
 circle(r = 2.5, $fn = 100);
 translate([25,35,-2.5]) cylinder(h = 8, r=4, $fn=100 );      
 translate([-25,35,-2.5]) cylinder(h = 8, r=4, $fn=100 );          
 translate([-25,-35,-2.5]) cylinder(h = 8, r=4, $fn=100 );          
 translate([25,-35,-2.5]) cylinder(h = 8, r=4, $fn=100 );          
 translate([25,35,-2.5]) rotate([0,0,52.5]) translate([-15,-4,0]) cube([15,8,5]);         
 translate([-25,35,-2.5])  rotate([0,0,-52.5]) translate([0,-4,0]) cube([15,8,5]);         
 translate([-25,-35,-2.5]) rotate([0,0,52.5]) translate([0,-4,0]) cube([15,8,5]);         
 translate([25,-35,-2.5]) rotate([0,0,-52.5]) translate([-15,-4,0]) cube([15,8,5]);         
 
} 
union ()   { 
 translate([25,35,-4]) cylinder(h = 12, r=1.8, $fn=100 );  
 translate([-25,35,-4]) cylinder(h = 12, r=1.8, $fn=100 );  
 translate([-25,-35,-4]) cylinder(h =12, r=1.8, $fn=100 );  
 translate([25,-35,-4]) cylinder(h = 12, r=1.8, $fn=100 );  
}
    
 }
}

if ( modelD  == 1 ) {   

difference() {
union ()   {     
cylinder(h = 10, r=75,  $fn=30 );  
 translate([60,-40,0]) cube([20,80,30]);      
 translate([-90,-15,0]) cube([40,30,15]);         
}
union ()   {     
  translate([0,0,-1]) cylinder(h = 40, r=62.2,  $fn=30 );  

    translate([-82,15,7.5]) rotate([90,0,0]) { cylinder(h = 50, r=2.2, $fn=100 ); 
       cylinder(h=3, r=6.9/sqrt(3), center=true, $fn=6);}
  
   translate([-90,-3,0]) cube([40,6,15]);         
  translate([61,0,17.5]) rotate([0,90,0]){
  translate([0,-35,-0]){ cylinder(h = 40, r=2.7, $fn=100 ); 
   cylinder(h=4, r=7.9/sqrt(3), center=true, $fn=6);}
   translate([0,35,-0]){ cylinder(h = 40, r=2.7, $fn=100 ); 
   cylinder(h=4, r=7.9/sqrt(3), center=true, $fn=6);}
    
  }   
  
}
}
}


if ( modelE  == 1 ) {   
   difference() {
    translate([-12.5,-40,-7.5]) cube([25,80,15]);
     union ()   {          
     translate([0,-35,-20]) cylinder(h = 40, r=2.7, $fn=100 );  
     translate([0,35,-20]) cylinder(h = 40, r=2.7, $fn=100 );  
     translate([-20,0,20.5]) rotate([0,90,0])cylinder(h = 46, r=24, fn=100 );      
   
    }
  }
}   

