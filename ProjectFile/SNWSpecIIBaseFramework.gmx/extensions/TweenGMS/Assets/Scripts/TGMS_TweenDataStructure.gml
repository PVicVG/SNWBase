#define TGMS_TweenDataStructure
/*
    Used to tween values contained in data structures
*/

#define TweenArray1D
/// TweenArray1D(target,ease,mode,delta,delay,dur,array,index,start,dest)

return TweenFire(argument0, ext_Array1D__, argument1, argument2, argument3, argument4, argument5, argument8, argument9, argument6, argument7);

#define TweenArray2D
/// TweenArray2D(target,ease,mode,delta,delay,dur,array,x,y,start,dest)

return TweenFire(argument0, ext_Array2D__, argument1, argument2, argument3, argument4, argument5, argument9, argument10, argument6, argument7, argument8);

#define TweenDSGrid
/// TweenDSGrid(target,ease,mode,delta,delay,dur,grid,x,y,start,dest)

return TweenFire(argument0, ext_DSGrid__, argument1, argument2, argument3, argument4, argument5, argument9, argument10, argument6, argument7, argument8);

#define TweenDSList
/// TweenDSList(target,ease,mode,delta,delay,dur,list,index,start,dest)

return TweenFire(argument0, ext_DSList__, argument1, argument2, argument3, argument4, argument5, argument8, argument9, argument6, argument7);

#define TweenDSMap
/// TweenDSMap(target,ease,mode,delta,delay,dur,map,key,start,dest)

return TweenFire(argument0, ext_DSMap__, argument1, argument2, argument3, argument4, argument5, argument8, argument9, argument6, argument7);

#define ext_Array1D__
/// ext_Array1D__(value,[array,index])

var _array = argument1[0];
_array[@ argument1[1]] = argument0;

#define ext_Array2D__
/// ext_Array2D__(value,[array,x,y])

var _array = argument1[0];
_array[@ argument1[1], argument1[2]] = argument0;

#define ext_DSGrid__
/// ext_DSGrid__(value,[grid,x,y])

ds_grid_set(argument1[0], argument1[1], argument1[2], argument0);

#define ext_DSList__
/// ext_DSList__(value,[list,index])

ds_list_replace(argument1[0], argument1[1], argument0);

#define ext_DSMap__
/// ext_DSMap__(value,[map,key])

ds_map_replace(argument1[0], argument1[1], argument0);