function layer_tilemap_get_id_fixed(argument0)
{
	if layer_exists(argument0)
	{
		var els = layer_get_all_elements(argument0);
		var n = array_length(els);
		for (var i = 0; i < n; i++)
		{
			var el = els[i];
			if layer_get_element_type(el) = layerelementtype_tilemap
				return el;
		}
	}
	return -1;
}
function layer_background_get_id_fixed(argument0)
{
	if (layer_exists(argument0))
	{
		var els = layer_get_all_elements(argument0);
		var n = array_length(els);
		for (var i = 0; i < n; i++)
		{
			var el = els[i];
			if layer_get_element_type(el) = 1
				return el;
		}
		return -1;
	}
	return -1;
}
function layer_change_background(argument0, argument1)
{
	if argument0 != argument1
	{
		var a = layer_get_all();
		for (var i = 0; i < array_length(a); i++)
		{
			var back_id = layer_background_get_id_fixed(a[i]);
			if layer_background_get_sprite(back_id) = argument0
				layer_background_sprite(back_id, argument1);
		}
	}
}
function get_all_layer_type(argument0)
{
	var layers;
	if argument0 = undefined
		argument0 = 0;
	var layernum = 0;
	var a = layer_get_all();
	for (var i = 0; i < array_length(a); i++)
	{
		var els = layer_get_all_elements(a[i]);
		if layer_get_element_type(els) = argument0
			layers[layernum++] = a[i];
	}
	if !layernum
		return undefined;
	return layers;
}
