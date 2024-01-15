ds_list_add(global.saveroom, id);
instance_create(x + 16, y, obj_spraydebris);
repeat (10)
{
	instance_create(x + 16, y, obj_spraydebris);
	instance_create(x + 16, y, obj_spraydebris);
	instance_create(x + 16, y, obj_spraydebris);
}
instance_create(x + 50, y + 20, obj_bombexplosion);
instance_create(x - 90, y - 20, obj_bombexplosion);
instance_create(x + 16, y, obj_bombexplosion);
instance_create(x + 16, y, obj_pizzanodebris);
