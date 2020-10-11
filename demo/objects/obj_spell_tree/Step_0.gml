/// @description
if (!mode && call)
{
	tree_button.tree = 0;
	if (button_choice[0, 0] && tree_button.selected != 2)
	{
		tree_button.selected = 1;
		button_choice[0, 0] = 0;
	}
	else if (tree_button.selected != 2)
	{
		tree_button.selected = 0;
	}
	if (button_choice[0, 1] && button[0, 1].selected != 2)
	{
		button[0, 1].selected = 1;
		button_choice[0, 1] = 0;
	}
	else if (button[0, 1].selected != 2)
	{
		button[0, 1].selected = 0;
	}
}
else if (call)
{
	tree_button.tree = 1;
	if (!x_width)
		y_height = 0;
	if (button_choice[0, 0] && tree_button.selected != 2)
	{
		tree_button.selected = 1;
		button_choice[0, 0] = 0;
	}
	else if (tree_button.selected != 2)
	{
		tree_button.selected = 0;
	}
	if (button_choice[0, 1] && button[0, 1].selected != 2)
	{
		button[0, 1].selected = 1;
		button_choice[0, 1] = 0;
	}
	else if (button[0, 1].selected != 2)
	{
		button[0, 1].selected = 0;
	}
	if (button_choice[1, 1] && button[1, 1].selected != 2)
	{
		button[1, 1].selected = 1;
		button_choice[1, 1] = 0;
	}
	else if (button[1, 1].selected != 2)
	{
		button[1, 1].selected = 0;
	}
}
button_choice[y_height, x_width] = 1;
if (set_number)
{
	if (keyboard_check(ord("0")))
	{
		obj_spell_slot.spell_ind[9] = selected_spell;
		selected_spell.ind = 9;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("1")))
	{
		obj_spell_slot.spell_ind[0] = selected_spell;
		selected_spell.ind = 0;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("2")))
	{
		obj_spell_slot.spell_ind[1] = selected_spell;
		selected_spell.ind = 1;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("3")))
	{
		obj_spell_slot.spell_ind[2] = selected_spell;
		selected_spell.ind = 2;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("4")))
	{
		obj_spell_slot.spell_ind[3] = selected_spell;
		selected_spell.ind = 3;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("5")))
	{
		obj_spell_slot.spell_ind[4] = selected_spell;
		selected_spell.ind = 4;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("6")))
	{
		obj_spell_slot.spell_ind[5] = selected_spell;
		selected_spell.ind = 5;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("7")))
	{
		obj_spell_slot.spell_ind[6] = selected_spell;
		selected_spell.ind = 6;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("8")))
	{
		obj_spell_slot.spell_ind[7] = selected_spell;
		selected_spell.ind = 7;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("9")))
	{
		obj_spell_slot.spell_ind[8] = selected_spell;
		selected_spell.ind = 8;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("-")))
	{
		obj_spell_slot.spell_ind[10] = selected_spell;
		selected_spell.ind = 10;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	else if (keyboard_check(ord("=")))
	{
		obj_spell_slot.spell_ind[11] = selected_spell;
		selected_spell.ind = 11;
		set_number = 0;
		button[y_height, x_width].image_alpha = 1;
	}
	
}
