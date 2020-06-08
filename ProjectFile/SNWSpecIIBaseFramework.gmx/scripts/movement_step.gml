if instance_place(x, y, obj_moving_dir_up)
{
yspd = -1;
xspd = 0;
} 

if instance_place(x, y, obj_moving_dir_down)
{
yspd = 1;
xspd = 0;
} 

if instance_place(x, y, obj_moving_dir_left)
{
yspd = 0;
xspd = -1;
}

if instance_place(x, y, obj_moving_dir_right)
{
yspd = 0;
xspd = 1;
}  

//Create Variables:
var i, previous_x, previous_y;
previous_x = x;
previous_y = y;

//Set Horizontal/Vertical Speed:
if(xspd < x_dcspeed) {
   x_dcspeed -= 0.025
}else if(xspd > x_dcspeed) {
   x_dcspeed += 0.025
} 
if(yspd < y_dcspeed) {
   y_dcspeed -= 0.025
} else if(yspd > y_dcspeed) {
   y_dcspeed += 0.025
}

x_speed +=  x_dcspeed;
y_speed += -y_dcspeed;

//Set the X/Y Position:
x = floor(relative_x+x_speed); 
y = floor(relative_y-y_speed); 
