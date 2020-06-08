if distance_to_object(obj_respawnable) > 16
{
    with instance_create(x, y, obj_respawnable)
    {
        my_obj = other.object_index;
    }
}
