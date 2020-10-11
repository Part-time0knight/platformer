/// @description
view_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 4.8;
view_y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 11 * 10);
for (i = 0; i < 12; ++i)
{
	draw_set_alpha(1);
	draw_set_color(c_white);
	if (i > 0 && i < 9)
		if (spell_ind[i])
		{
			draw_slot(1, view_x + 44 * i, view_y , spell_ind[i].sprite_index, i + 1);
			draw_set_alpha(0.8);
			draw_set_color(c_black);
			draw_rectangle(view_x + 44 * i + 8, view_y + 32 * spell_ind[i].cd_now/spell_ind[i].cd + 4, view_x + 44 * i + 40, view_y + 4, 0);
		}
		else
			draw_slot(1, view_x + 44 * i, view_y , 0, i + 1);
	else if (i == 0)
		if (spell_ind[i])
		{
			draw_slot(0, view_x + 44 * i, view_y, spell_ind[i].sprite_index, i + 1);
			draw_set_alpha(0.8);
			draw_set_color(c_black);
			draw_rectangle(view_x + 44 * i + 8, view_y + 32 * spell_ind[i].cd_now/spell_ind[i].cd + 4, view_x + 44 * i + 40, view_y + 4, 0);
		}
		else
			draw_slot(0, view_x + 44 * i, view_y, 0, i + 1);
	else if (i == 9)
		if (spell_ind[i])
		{
			draw_slot(1, view_x + 44 * i, view_y, spell_ind[i].sprite_index, 0);
			draw_set_alpha(0.8);
			draw_set_color(c_black);
			draw_rectangle(view_x + 44 * i + 8, view_y + 32 * spell_ind[i].cd_now/spell_ind[i].cd + 4, view_x + 44 * i + 40, view_y + 4, 0);
		}
		else
			draw_slot(1, view_x + 44 * i, view_y, 0, 0);
	else if (i == 10)
		if (spell_ind[i])
		{
			draw_slot(1, view_x + 44 * i, view_y, spell_ind[i].sprite_index, "-");
			draw_set_alpha(0.8);
			draw_set_color(c_black);
			draw_rectangle(view_x + 44 * i + 8, view_y + 32 * spell_ind[i].cd_now/spell_ind[i].cd + 4, view_x + 44 * i + 40, view_y + 4, 0);
		}
		else
			draw_slot(1, view_x + 44 * i, view_y, 0, "-");
	else if (i == 11)
		if (spell_ind[i])
		{
			draw_slot(2, view_x + 44 * i, view_y, spell_ind[i].sprite_index, "-");
			draw_set_alpha(0.8);
			draw_set_color(c_black);
			draw_rectangle(view_x + 44 * i + 8, view_y + 32 * spell_ind[i].cd_now/spell_ind[i].cd + 4, view_x + 44 * i + 40, view_y + 4, 0);
		}
		else
			draw_slot(2, view_x + 44 * i, view_y, 0, "=");
}
