///create_rings(x,y,ring_amount)
// Create Rings that bounce around.
    rings_angle = 101.25 
    rings_speed = 4
    var rings_total = argument2;
    while(rings_total){
        ring = instance_create(argument0, argument1, obj_ring);
        ring.timer = 256;        
        ring.y_speed    = -dsin(round(rings_angle))*rings_speed;
        ring.x_speed    =  dcos(round(rings_angle))*rings_speed;
        ring.motion     =  true;
        if(rings_total mod 2 != 0)
        {
            rings_angle += 22.5;
            ring.x_speed *= -1;
        }   
        rings_total -= 1;
        if(rings_total == 16)
        {
            rings_speed = 2;
            rings_angle = 101.25;
        }
        ring.image_speed = 0.25;
    }

