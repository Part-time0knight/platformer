/// @description
if (call && button_choice[0, 0])
{
	if (mode)
	{
		mode = 0;
		for (i = 0; i < button_weapon_height; ++i)
			instance_destroy(button[i, 1]);
		button_weapon_height = 0;
		button_weapon_width = 2;
		for (i = 1; i < button_weapon_width; ++i)
			button[0, i] = instance_create_layer(x, y - 92 + 64 * i, "button", obj_spell_button);
		button[0, 1].spell_id = spr_spell_strike;
	}
	else
	{
		mode = 1;
		for (i = 1; i < button_weapon_width; ++i)
			instance_destroy(button[0, i]);
		button_weapon_height = 2;
		button_weapon_width = 2;
		for (i = 0; i < button_weapon_height; ++i)
			button[i, 1] = instance_create_layer(x - 128 + 256 * i, y - 32, "button", obj_spell_button);
		button[0, 1].spell_id = spr_spell_vamp_strike;
		button[1, 1].spell_id = spr_spell_vamp_heal;
	}
	tree_button.selected = 1;
}
else if (call)
{
	button[y_height, x_width].selected = 1;
	set_number = 1;
	button[y_height, x_width].image_alpha = 0.4;
}