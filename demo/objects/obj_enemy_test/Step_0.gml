/// @description состояние автомата и анимации
if (collision_rectangle(x - sprite_width/2, y + sprite_height/2, x + sprite_width/2, y - sprite_height/2, obj_player_test_ph, 0, 1))
{
	obj_player_test_ph.movespeed = 1;
}
else
	obj_player_test_ph.movespeed = 4;
if (take_damage && !temp)
{
	temp = 1;
	sprite_index = spr_enemy2_takedam;
	alarm[3] = 30;
	phy_speed_x = 0;
}
else if (!take_damage)
{
	if (cond == 1)
	{
		hunt = 1;
	}
	else if (cond == 2 && !attack_block)
	{
		attack_block = 1;
		alarm[1] = 90;
		alarm[0] = 120;
		alarm[2] = 6;
		sprite_index = spr_enemy2_attack;
	}
	if (hunt == 1 && !attack_block)
	{
		if (!block)
		{
			alarm[0] = 90;
			block = 1;
		}
		else if (x - obj_player_test_ph.x)
		{
			image_xscale = -1;
			spd = -1.2;
			phy_speed_x = spd;
		}
		else
		{
			image_xscale = 1;
			spd = 1.2;
			phy_speed_x = spd;
		}
	}
	else
		phy_speed_x = 0;
	if (phy_speed_x != 0 && !attack_block)
	{
		sprite_index = spr_enemy2_run;
	}
	else if (!attack_block)
		sprite_index = spr_enemy2_stay;
}