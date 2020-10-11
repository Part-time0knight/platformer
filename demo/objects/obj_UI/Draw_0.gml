view_x = camera_get_view_x(view_camera[0]);
view_y = camera_get_view_y(view_camera[0]);
hp_temp = hp;
temp = hp_temp * 0.1;
hp_temp_x = hp_x;
draw_sprite(spr_bar_test, 0, view_x + 4, view_y + 4);
draw_set_color(c_white);
draw_sprite(spr_blood_bar, 0, view_x + 135, view_y + 88);
for (i = 0; i < 10; ++i)
{
	if (hp_temp_x > temp)
	{
		hp_bar[i] = temp;
		hp_temp_x -= temp;
	}
	else
	{
		hp_bar[i] = hp_temp_x;
		hp_temp_x = 0;
	}
	if (i > 0 && hp_bar[i] >= 0)
		draw_sprite_ext(spr_segment_hp, 0, view_x + 172 + 16 * i, view_y + 14, hp_bar[i]/temp, 1, 0, c_white, 1);
	else if (hp_bar[i] >= 0)
		draw_sprite_ext(spr_segment_hp_first, 0, view_x + 172 + 16 * i, view_y + 14, hp_bar[i]/temp, 1, 0, c_white, 1);
}
hp_temp = stamina;
temp = hp_temp * 0.1;
hp_temp_x = stamina_x;
for (i = 0; i < 10; ++i)
{
	if (hp_temp_x > temp)
	{
		hp_bar[i] = temp;
		hp_temp_x -= temp;
	}
	else
	{
		hp_bar[i] = hp_temp_x;
		hp_temp_x = 0;
	}
	if (i > 0 && hp_bar[i] >= 0)
		draw_sprite_ext(spr_segment_st, 0, view_x + 172 + 16 * i, view_y + 54, hp_bar[i]/temp, 1, 0, c_white, 1);
	else if (hp_bar[i] >= 0)
		draw_sprite_ext(spr_segment_st_first, 0, view_x + 172 + 16 * i, view_y + 54, hp_bar[i]/temp, 1, 0, c_white, 1);
}

temp = blood / 13;
blood_temp = blood_x;
for (i = 0; i < 13; ++i)
{
	if (blood_temp > temp)
	{
		blood_bar[i] = temp;
		blood_temp -= temp;
	}
	else
	{
		blood_bar[i] = blood_temp;
		blood_temp = 0;
	}
	if (i == 0)
	{
		draw_sprite_ext(spr_segment_blood_left, 0, view_x + 162 + 8 * i, view_y + 93, blood_bar[i]/temp, 1, 0, c_white, 1);
	}
	else if(i < 12)
	{
		draw_sprite_ext(spr_segment_blood_middle, 0, view_x + 162 + 8 * i, view_y + 93, blood_bar[i]/temp, 1, 0, c_white, 1);
	}
	else 
	{
		draw_sprite_ext(spr_segment_blood_right, 0, view_x + 162 + 8 * i, view_y + 93, blood_bar[i]/temp, 1, 0, c_white, 1);
	}
}

