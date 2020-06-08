///draw_plane_3d(texture, screen_width, screen_height, y, scroll_x, scroll_y)

        var _x = argument4-view_xview[view_current];
        var _y = argument3-view_yview[view_current];
        // Set up 3D Perspectve
        d3d_set_projection_ext(0, 0, 0, 0, 0, 2000, 0, -1, 0, 45, argument2/argument1, 1, 2000);       
        d3d_set_perspective(true);
        draw_set_color(c_white);
        texture_set_repeat(true);
        
        // Draw 2 polygons to render a quad.
        d3d_primitive_begin_texture(pr_trianglelist, argument0);
        
        d3d_vertex_texture(-1000, _y, 0,      _x, argument5);
        d3d_vertex_texture(1000,  _y, 0,    1+_x, argument5);
        d3d_vertex_texture(1000,  _y, 1600, 1+_x, 0.5+argument5);
        
        d3d_vertex_texture(-1000, _y, 0,      _x, argument5);
        d3d_vertex_texture(-1000, _y, 1600,   _x, 0.5+argument5);
        d3d_vertex_texture(1000,  _y, 1600, 1+_x, 0.5+argument5);
        
        d3d_primitive_end();
        
        // Set projection back to 2D
        d3d_set_projection_ortho(0, 0, argument1, argument2, 0);
        texture_set_repeat(false);
