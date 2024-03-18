function scr_solid_player(argument0, argument1, argument2) //scr_solid_player
{
    if argument2 == undefined
        argument2 = false
    var old_x = x
    var old_y = y
    x = argument0
    y = argument1
    if place_meeting(x, y, obj_solid)
    {
        x = old_x
        y = old_y
        return true;
    }
    var platform = noone
    if place_meeting(x, y, obj_platform)
    {
        platform = instance_place(x, y, obj_platform)
        if y > old_y
        {
            var _list = ds_list_create()
            var _platforms = instance_place_list(x, y, obj_platform, _list, 0)
            var collided = 0
            if _platforms > 0
            {
                for (var i = 0; i < _platforms; i++)
                {
                    platform = ds_list_find_value(_list, i)

                    var _can_collide = platform.can_collide(platform)
					if (platform.object_index == obj_cottonplatform || platform.object_index = obj_cottonplatform_tiled) && state != states.cotton && state != states.cottonroll
					{
						_can_collide = false
					}
                    if _can_collide && place_meeting(x, y, platform) && !place_meeting(x, old_y, platform)
                        collided = true
                }
            }
            ds_list_destroy(_list)
            if collided && state != states.ladder
            {
                x = old_x
                y = old_y
                return true;
            }
        }
    }
    if y > old_y && !place_meeting(x, old_y, obj_minecartrail) && place_meeting(x, y, obj_minecartrail) && state == states.minecart
    {
        if state == states.minecart
        {
            x = old_x
            y = old_y
            return true;
        }
    }
    var slope = instance_place(x, y, obj_slope)
    if slope && !argument2
    {
        with slope
        {
            var object_side = 0
            var slope_start = 0
            var slope_end = 0
            if image_xscale > 0
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
            var m = (sign(image_xscale) * (bbox_bottom - bbox_top)) / (bbox_right - bbox_left)
            slope = slope_start - round(m * (object_side - bbox_left))
            if other.bbox_bottom >= slope
            {
                other.x = old_x
                other.y = old_y
                return true;
            }
        }
    }
    x = old_x
    y = old_y
    return false;
}
