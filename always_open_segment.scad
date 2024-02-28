// Always open segment
// EAJ 2024

module always_open(h,b,phi,d,t,bf,theta,ri,ro){

translate([-(5*w-h*sin(-theta)),-(h+h-3*b*sin(phi)+h*cos(theta))+h/2,0])
    union(){
    
difference(){
translate([0,-h/2,0])

union(){
union(){
    
translate([((1*2*w-w+w+w/2)+(1*2*w-w+w+w/2))/2+w,(((2*(h-b*sin(phi)))+h*cos(theta)/2)+(3.5*(h-b*sin(phi))))/2,0])

difference(){
cylinder(t*2+.1,r1=ro,r2=ro,$fn=12);

translate([0,0,-t/2]) cylinder(t*3,r1=ri,r2=ri,$fn=12);
}
}

for (x=[0:5]){
translate([x*2*w-2*w,0*(0*(h*(cos(theta))-b*sin(phi))+h-b*sin(phi)),0]) reentrant_filled(h,b,phi,d,t*2+.1,bf,0);
    }
    
for (x=[0,1,2,3,4]){
translate([x*2*w-w,1*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,0);
    }
    
for (x=[0,1,2,3,4,5]){
translate([x*2*w-2*w,h+h-4*b*sin(phi)+2*h*cos(theta),0]) reentrant(h,b,phi,d,t,bf,0);
    }
    
for (x=[-1:5]){
translate([x*2*w-w,2*h+h-5*b*sin(phi)+2*h*cos(theta),0]) reentrant_filled(h,b,phi,d,t,bf,0);
    }

}

   
translate([0,-h*10-0.01,-t*5])
cube([h*10,h*10,t*10]);

translate([-h*9,-h*10-.01,-t*5])
cube([h*10,h*10,t*10]);

translate([-h*11,-h,-t*5])
cube([h*10,h*10,t*10]);

translate([w*8,-h,-t*5])
cube([h*10,h*10,t*10]);

translate([-h-0.001,0.01+ 2*h+h-5*b*sin(phi)+2*h*cos(theta),-t*5])
cube([h*10,h*10,t*10]);
}
    
translate([0,-h/2,0])
union(){

translate([-2*w,2*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,theta);

translate([2*w*3,2*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,theta); 

translate([2*w*2,2*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,theta); 

translate([2*w*0,2*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,theta); 

translate([h*sin(-theta)-b*cos(phi),h*cos(theta)-b*sin(phi)+2*(h-b*sin(phi)),0]) reentrant(h,b,phi,d,t,bf,-theta);

translate([5*w-h*sin(theta),h+h-3*b*sin(phi)+h*cos(theta),0]) reentrant(h,b,phi,d,t,bf,-theta);   
}
}
}