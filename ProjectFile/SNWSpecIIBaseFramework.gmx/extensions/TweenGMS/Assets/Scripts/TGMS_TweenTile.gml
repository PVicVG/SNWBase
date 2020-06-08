#define TGMS_TweenTile


#define TweenTilePosition
/// TweenTilePosition(target,ease,mode,delta,delay,dur,tile,x1,y1,x2,y2)

return TweenFire(argument0, ext_tile_position__, argument1, argument2, argument3, argument4, argument5, 0, 1, argument6, argument7, argument9, argument8, argument10);


#define TweenTileX
/// TweenTileX(target,ease,mode,delta,delay,dur,tile,x1,x2)

return TweenFire(argument0, ext_tile_x__, argument1, argument2, argument3, argument4, argument5, argument7, argument8, argument6);

#define TweenTileY
/// TweenTileY(target,ease,mode,delta,delay,dur,tile,y1,y2)

return TweenFire(argument0, ext_tile_y__, argument1, argument2, argument3, argument4, argument5, argument7, argument8, argument6);

#define TweenTileScale
/// TweenTileScale(target,ease,mode,delta,delay,dur,tile,x1,y1,x2,y2)

return TweenFire(argument0, ext_tile_scale__, argument1, argument2, argument3, argument4, argument5, 0, 1, argument6, argument7, argument9, argument8, argument10);


#define TweenTileAlpha
/// TweenTileAlpha(target,ease,mode,delta,delay,dur,tile,alpha1,alpha2)

return TweenFire(argument0, ext_tile_alpha__, argument1, argument2, argument3, argument4, argument5, argument7, argument8, argument6);

#define TweenTileBlend
/// TweenTileBlend(target,ease,mode,delta,delay,dur,tile,col1,col2)

return TweenFire(argument0, ext_tile_blend__, argument1, argument2, argument3, argument4, argument5, 0, 1, argument6, argument7, argument8);

#define TweenTileRegion
/// TweenTileRegion(target,ease,mode,delta,delay,dur,tile,left1,top1,width1,height1,left2,top2,width2,height2)

var _extData;
_extData[8] = argument14;
_extData[0] = argument6;
_extData[1] = argument7;
_extData[2] = argument11;
_extData[3] = argument8;
_extData[4] = argument12;
_extData[5] = argument9;
_extData[6] = argument13;
_extData[7] = argument10;

return TweenFire(argument0, ext_tile_region__, argument1, argument2, argument3, argument4, argument5, 0, 1, _extData);

#define TweenTileLayerShift
/// TweenTileLayerShift(target,ease,mode,delta,delay,dur,depth,x,y)

return TweenFire(argument0, ext_tilelayer_shift__, argument1, argument2, argument3, argument4, argument5, 0, 1, argument6, argument7, argument8, 0);