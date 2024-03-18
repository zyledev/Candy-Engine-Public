function parallax_layer(argument0, argument1, argument2)
{
	var return_value;
	if argument0 == undefined
		argument0 = undefined;
	return_value[0] = 0;
	return_value[1] = 0;
	if (argument0 != undefined)
	{
		for (var i = 0; i < array_length(global.ParallaxArray); i++)
		{
			if global.ParallaxArray[i].layerName == layer_get_name(argument0)
			{
				var _function = global.ParallaxArray[i].functionID;
				return _function();
			}
		}
	}
	return return_value;
}
function add_parallax_function(argument0, argument1, argument2)
{
	if argument2 == undefined
		argument2 = false;
	var array_pos = 0;
	for (var i = 0; i < array_length(global.ParallaxArray); i++)
	{
		if global.ParallaxArray[i].layerName == argument0
		{
			if argument2
				array_pos = i;
			else
				return false;
		}
	}
	if !argument2
		array_pos = global.ParallaxArraynumber++;
	global.ParallaxArray[array_pos] = 
	{
		layerName: argument0,
		functionID: argument1
	};
	return true;
}
