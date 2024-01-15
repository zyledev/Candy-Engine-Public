function scr_solid(argument0, argument1, argument2 = 0) //scr_solid
{
    var old_x = x
    var old_y = y
    x = argument0
    y = argument1
    if place_meeting(x, y, obj_solid)
    {
        x = old_x
        y = old_y
        return 1;
    }
    var platform = noone
    if place_meeting(x, y, obj_platform)
    {
        platform = instance_place(x, y, obj_platform)
        if (y > old_y)
        {
            var _list = ds_list_create()
            var _platforms = instance_place_list(x, y, obj_platform, _list, 0)
            var collided = 0
            if (_platforms > 0)
            {
                for (var i = 0; i < _platforms; i++)
                {
                    platform = ds_list_find_value(_list, i)
                    var _can_collide = platform.can_collide(platform)
                    if (_can_collide == 1 && place_meeting(x, y, platform) && (!(place_meeting(x, old_y, platform))))
                        collided = 1
                }
            }
            ds_list_destroy(_list)
            if collided
            {
                x = old_x
                y = old_y
                return 1;
            }
        }
    }
    var slope = instance_place(x, y, obj_slope)
    if (slope && argument2 == 0)
    {
        with (slope)
        {
            var object_side = 0
            var slope_start = 0
            var slope_end = 0
            if (image_xscale > 0)
            {
                object_side = other.bbox_right
                slope_start = bbox_bottom
                slope_end = bbox_top
            }
            else
            {
                object_side = other.bbox_left
                slope_start = bbox_top
                slope_end = bbox_bottom
            }
            var m = ((sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left))
            slope = (slope_start - round((m * (object_side - bbox_left))))
            if (other.bbox_bottom >= slope)
            {
                other.x = old_x
                other.y = old_y
                return 1;
            }
        }
    }
    x = old_x
    y = old_y
    return 0;
}

