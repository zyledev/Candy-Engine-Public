can_collide = function(argument0)
{
	if (argument0 == undefined)
		argument0 = obj_player;
	if (argument0 == obj_player)
	{
		var wow = argument0.state = states.cotton || argument0.state = states.cottonroll;
		return wow;
	}
	else
		return true;
};
