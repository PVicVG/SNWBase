#define Default_Property_Setters
/// Default_Property_Setters()
/*
    - To create your own property setter, create a new script and write: 
        
        // For instance variable
        argument1.variable = argument0;
        
        or...
        
        // For global variable
        global.variable = argument0;
        
    
    [Overview]
    argument0 = new value
    argument1 = affected target instance (if needed)
    variable  = specific variable you want to update
  
    
    - Script examples:
        
        /// strength__(value,instance)
        {
            argument1.strength = argument0;
        }
        
        /// health__(value)
        {
            health = argument0;
        }
    
    
    - It is advised to add custom property setters outside of Default_Property_Setters script
*/

#define null__
/// null()
// return 0


#define x__
/// x__(value,instance)

argument1.x = argument0;

#define y__
/// y__(value,instance)

argument1.y = argument0;

#define roundx__
/// roundx__(value,instance)

argument1.x = round(argument0);

#define roundy__
/// roundy__(value,instance)

argument1.y = round(argument0);

#define speed__
/// speed__(value,instance)

argument1.speed = argument0;

#define hspeed__
/// hspeed__(value,instance)

argument1.hspeed = argument0;

#define vspeed__
/// vspeed__(value,instance)

argument1.vspeed = argument0;

#define direction__
/// direction__(value,instance)

argument1.direction = argument0;

#define depth__
/// depth__(value,instance)

argument1.depth = argument0;

#define friction__
/// friction__(value,instance)

argument1.friction = argument0;

#define gravity__
/// gravity__(value,instance)

argument1.gravity = argument0;

#define gravity_direction__
/// gravity_direction__(value,instance)

argument1.gravity_direction = argument0;

#define image_speed__
/// image_speed__(value,instance)

argument1.image_speed = argument0;

#define image_index__
/// image_index__(value,instance)

argument1.image_index = argument0;

#define image_alpha__
/// image_alpha__(value,instance)

argument1.image_alpha = argument0;

#define image_angle__
/// image_angle__(value,instance)

argument1.image_angle = argument0;

#define image_scale__
/// image_scale__(value,instance)

argument1.image_xscale = argument0;
argument1.image_yscale = argument0;


#define image_xscale__
/// image_xscale__(value,instance)

argument1.image_xscale = argument0;

#define image_yscale__
/// image_yscale__(value,instance)

argument1.image_yscale = argument0;

#define health__
/// health__(value)

health = argument0;

#define score__
/// score__(value)

score = argument0;

#define path_position__
/// path_position__(value,instance)

argument1.path_position = argument0;

#define path_scale__
/// path_scale__(value,instance)

argument1.path_scale = argument0;


#define path_speed__
/// path_speed__(value,instance)

argument1.path_speed = argument0;

#define path_orientation__
/// path_orientation__(value,instance)

argument1.path_orientation = argument0;

#define timeline_speed__
/// timeline_speed__(value,instance)

argument1.timeline_speed = argument0;

#define timeline_position__
/// timeline_position__(value,instance)

argument1.timeline_position = argument0;


#define view_xview__
/// view_xview__(x)

view_xview = argument0;

#define view_yview__
/// view_yview__(y)

view_yview = argument0;

#define view_angle__
/// view_angle__(angle)

view_angle = argument0;

#define view_wview__
/// view_wview__(width)

view_wview = argument0;

#define view_hview__
/// view_hview__(height)

view_hview = argument0;