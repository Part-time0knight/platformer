if (keyboard_check(vk_anykey) && !obj_spell_tree.call)
{
	if ((keyboard_check(ord("1")) || keyboard_check(vk_numpad1)) && spell_ind[0] && !spell_ind[0].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[0].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[0].blood_cost)
	{
		can_strike[0] = 0;
		obj_player_test_ph.spell_id = spell_ind[0];
		spell_ind[0].cd_now = spell_ind[0].cd;
		
	}
	else if ((keyboard_check(ord("2")) || keyboard_check(vk_numpad2)) && spell_ind[1] && !spell_ind[1].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[1].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[1].blood_cost)
	{
		can_strike[1] = 0;
		obj_player_test_ph.spell_id = spell_ind[1];
		spell_ind[1].cd_now = spell_ind[1].cd;
	}
	else if ((keyboard_check(ord("3")) || keyboard_check(vk_numpad3)) && spell_ind[2] && !spell_ind[2].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[2].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[2].blood_cost)
	{
		can_strike[2] = 0;
		obj_player_test_ph.spell_id = spell_ind[2];
		spell_ind[2].cd_now = spell_ind[2].cd;
	}
	else if ((keyboard_check(ord("4")) || keyboard_check(vk_numpad4)) && spell_ind[3] && !spell_ind[3].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[3].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[3].blood_cost)
	{
		can_strike[3] = 0;
		obj_player_test_ph.spell_id = spell_ind[3];
		spell_ind[3].cd_now = spell_ind[3].cd;
	}
	else if ((keyboard_check(ord("5")) || keyboard_check(vk_numpad5)) && spell_ind[4] && !spell_ind[4].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[4].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[4].blood_cost)
	{
		can_strike[4] = 0;
		obj_player_test_ph.spell_id = spell_ind[4];
		spell_ind[4].cd_now = spell_ind[4].cd;
	}
	else if ((keyboard_check(ord("6")) || keyboard_check(vk_numpad6)) && spell_ind[5] && !spell_ind[5].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[5].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[4].blood_cost)
	{
		can_strike[5] = 0;
		obj_player_test_ph.spell_id = spell_ind[5];
		spell_ind[5].cd_now = spell_ind[5].cd;
	}
	else if ((keyboard_check(ord("7")) || keyboard_check(vk_numpad7)) && spell_ind[6] && !spell_ind[6].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[6].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[6].blood_cost)
	{
		can_strike[6] = 0;
		obj_player_test_ph.spell_id = spell_ind[6];
		spell_ind[6].cd_now = spell_ind[6].cd;
	}
	else if ((keyboard_check(ord("8")) || keyboard_check(vk_numpad8)) && spell_ind[7] && !spell_ind[7].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[7].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[7].blood_cost)
	{
		can_strike[7] = 0;
		obj_player_test_ph.spell_id = spell_ind[7];
		spell_ind[7].cd_now = spell_ind[7].cd;
	}
	else if ((keyboard_check(ord("9")) || keyboard_check(vk_numpad9)) && spell_ind[8] && !spell_ind[8].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[8].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[8].blood_cost)
	{
		can_strike[8] = 0;
		obj_player_test_ph.spell_id = spell_ind[8];
		spell_ind[8].cd_now = spell_ind[6].cd;
	}
	else if ((keyboard_check(ord("0")) || keyboard_check(vk_numpad0)) && spell_ind[9] && !spell_ind[9].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[9].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[9].blood_cost)
	{
		can_strike[9] = 0;
		obj_player_test_ph.spell_id = spell_ind[9];
		spell_ind[9].cd_now = spell_ind[9].cd;
	}
	else if (keyboard_check(ord("-")) && spell_ind[10] && !spell_ind[10].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[10].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[10].blood_cost)
	{
		can_strike[10] = 0;
		obj_player_test_ph.spell_id = spell_ind[10];
		spell_ind[10].cd_now = spell_ind[10].cd;
	}
	else if (keyboard_check(ord("=")) && spell_ind[11] && !spell_ind[11].cd_now
		&& obj_player_test_ph.stamina_current > spell_ind[11].stamina_cost && obj_player_test_ph.blood_current >= spell_ind[11].blood_cost)
	{
		can_strike[11] = 0;
		obj_player_test_ph.spell_id = spell_ind[11];
		spell_ind[11].cd_now = spell_ind[11].cd;
	}
}
