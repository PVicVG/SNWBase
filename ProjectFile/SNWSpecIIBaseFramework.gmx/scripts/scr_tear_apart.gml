///scr_tear_apart()
/* Platform Collapse code port from Sonic MAX Engine. (With Permission) */
block_width  = floor(sprite_get_width(sprite_index)/2);
block_height = floor(sprite_get_height(sprite_index)/2);

xx=x-sprite_get_xoffset(sprite_index)+(sprite_get_width(sprite_index)/2)
yy=y-sprite_get_yoffset(sprite_index)+(sprite_get_height(sprite_index)/2)

xxx=x-sprite_get_xoffset(sprite_index)
yyy=y-sprite_get_yoffset(sprite_index)

 
timer = 1;
height = (ceil(sprite_height/block_height)*block_height);
blockheight2 = block_height-(height-sprite_height);
 
if(image_xscale == -1){
 for(i=block_width;i<=abs(sprite_width);i+=block_width;)
 {
  for(i2=height-block_height;i2>=0;i2-=block_height;)
  {            
 
  ins               = instance_create((x-sprite_xoffset)-abs(sprite_width)+i, (y-sprite_yoffset)+i2, obj_shattered_piece);
  with(ins)
  {
 
    /* Get _x/_y Position: */  
   _x = abs(other.sprite_width)-other.i;
   _y = other.i2;
   _solid = true;
   _w = other.block_width;
   
   if(other.i2 == other.height-other.block_height)  
   {          
    _h = other.blockheight2;
   };
   else
   {
    _h = other.block_height;
   };
   
   sprite_index    = other.sprite_index;                        
   image_xscale    = other.image_xscale;
   
    /* Set Gravitation and Speed: */                                        
   _gravity         = 0;
   _speed           = 0;
   _gravity_active   = false;
   
    /* Get Mask Sprite: */    
   if(sprite_exists(other.mask_index))
   {
    mask = sprite_duplicate(other.mask_index)
   };
   else
   {
    mask = sprite_duplicate(other.sprite_index)
   }
 
   sprite_collision_mask(mask, true, 2, _x, _x+_w, _y, _y+_h, 0, 0);
   mask_index      = mask;
   }
   
   i3 = i+block_width;
                   
   ins.alarm[0]   = timer;
   timer         += 2;
   }
 }
 }
 else if(image_xscale == 1)
 {
  for(i=sprite_width-block_width;i>=0;i-=block_width;)
  {
   for(i2=height-block_height;i2>=0;i2-=block_height;)
   {            
   
   ins               = instance_create((x-sprite_xoffset)+i, (y-sprite_yoffset)+i2, obj_shattered_piece);
   with(ins)
   {
   
    /* Get _x/_y Position: */  
    _x = other.i
    _y = other.i2;
    _solid = true;
    _w = other.block_width;
   
    if(other.i2 == other.height-other.block_height)
    {            
     _h = other.blockheight2;
    };
    else
    {
     _h = other.block_height;    
    };
 
    sprite_index    = other.sprite_index;                        
    image_xscale    = other.image_xscale;
   
    /* Set Gravitation and Speed: */        
    _gravity         = 0;
    _speed           = 0;
    _gravity_active   = false;
   
    /* Get Mask Sprite: */    
    if(sprite_exists(other.mask_index))
    {
     mask = sprite_duplicate(other.mask_index)
    };
    else
    {
     mask = sprite_duplicate(other.sprite_index)
    };
   
    sprite_collision_mask(mask, true, 2, _x, _y, _x+_w, _y+_h, 0, 0);
    mask_index      = mask;
    }
 
    i3             = (abs(sprite_width)-i)+block_width;
                   
    ins.alarm[0]   = timer;
    timer         += 2;
    };
  };
};
 
