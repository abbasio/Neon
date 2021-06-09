/// @desc Spawn Enemies

if (trigger)
{
	for (var i = 0; i < ds_list_size(waves); i++)
	{
		var _next = ds_list_find_value(waves, i)
		if (_next[_WAVE] == current_wave) && (_next[_DELAY] == timer)
		{
			var _spawnpoint = _next[_SPAWN];
			instance_create_layer(spawn[_spawnpoint, 0], spawn[_spawnpoint, 1], "Enemies", _next[_TYPE]);
		}
	}
	
	timer++; //Increases timer




if  (remaining[current_wave] <= 0)
{
	if (current_wave == total_waves)
	{
		instance_destroy();
	}
	else
	{
		current_wave++;
		timer = 0;
	}
}
}