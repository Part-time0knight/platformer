/// @description
if (call && button_choice[0, 0])
{
	tree_button.selected = 2;
}
else if (call)
{
	button[y_height, x_width].selected = 2;
	if (button[y_height, x_width].spell_id == spr_spell_strike)
	{
		selected_spell = obj_spell_strike;
	}
	else if (button[y_height, x_width].spell_id == spr_spell_vamp_heal)
	{
		selected_spell = obj_spell_heal;
	}
	else if (button[y_height, x_width].spell_id == spr_spell_vamp_strike)
	{
		selected_spell = obj_spell_vamp_strike;
	}
}