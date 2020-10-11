/// @description
/*if (!call && !obj_player_test_ph.dialog)
{
	call = 1;
	obj_player_test_ph.dialog = 1;
	obj_player_test_ph.phy_active = 0;
	x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
	y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
	tree_button = instance_create_layer(x, y - 128, "button", obj_spell_tree_button);
	if (!mode)
	{
		for (i = 1; i < button_weapon_width; ++i)
			button[0, i] = instance_create_layer(x, y - 92 + 64 * i, "button", obj_spell_button);
		button[0, 1].spell_id = spr_spell_strike;
	}
	else
	{
		for (i = 0; i < button_weapon_height; ++i)
			button[i, 1] = instance_create_layer(x - 128 + 256 * i, y - 32, "button", obj_spell_button);
		button[0, 1].spell_id = spr_spell_vamp_strike;
		button[1, 1].spell_id = spr_spell_vamp_heal;
	}
}
else if (call)
{
	call = 0;
	obj_player_test_ph.dialog = 0;
	obj_player_test_ph.phy_active = 1;
	instance_destroy(tree_button);
	if (!mode)
		for (i = 1; i < button_weapon_width; ++i)
			instance_destroy(button[0, i]);
	else
		for (i = 0; i < button_weapon_height; ++i)
			instance_destroy(button[i, 1]);
}*/