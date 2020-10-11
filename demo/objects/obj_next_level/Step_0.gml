/// @description поиск игрока
if (collision_rectangle(x - sprite_width/2, y + sprite_height/2, x + sprite_width/2, y - sprite_height/2, obj_player_test_ph, 0, 1))
{
	if (keyboard_check(ord("e")) || keyboard_check(ord("E")))
	{
		if (room == rm_test_ph)
		{
			room_goto_next();
		}
		else
			room_goto_previous();
	}
	near = 1;
}
else
	near = 0;
if (!temp)
{
	alarm[0] = 30;
	temp = 1;
}