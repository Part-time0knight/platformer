function skeleton_watch(argument0, argument1, argument2) {
	//argument0 - направление взгляда, argument1 - x скелета, argument2 - y скелета
	//return 0 - гг не замечен, 1 - гг замечен, гг в зоне атаки
	var i, j;
	if (collision_rectangle(argument1, argument2 - 32, argument1 + argument0 * 64, argument2 + 64, obj_player_test_ph, 0, 0))
	{
		return 2;
	}
	for (j = argument2 - 48; j < argument2 + 64; j = j + 32)
	{
		if (argument0)
		{
			for (i = argument1 + 32; (i <= (argument1 + 640)) && (!position_meeting(i, j, obj_brik_ph)); i += 16)
			{
				if (position_meeting(i, j, obj_player_test_ph))
				{
					return 1;
				}
			}
			for (i = argument1 - 32; (i >= (argument1 - 96)); i -= 16)
			{
				if (position_meeting(i, j, obj_player_test_ph))
				{
					return 1;
				}
			}
		}
		else
		{
			for (i = argument1 - 32; (i >= (argument1 - 640)) && (!position_meeting(i, j, obj_brik_ph)); i -= 16)
			{
				if (position_meeting(i, j, obj_player_test_ph))
				{
					return 1;
				}
			
			}
			for (i = argument1 + 32; (i <= (argument1 + 96)); i += 16)
			{
				if (position_meeting(i, j, obj_player_test_ph))
				{
					return 1;
				}
			}
		}
	}
	return 0;



}
