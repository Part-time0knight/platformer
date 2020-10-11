/// @description
//---------------корректировка анимаций и скорости---------------------------------------
if (sprite_index == spr_player_test2_sit && !keyboard_check(vk_down) && !obj_spell_tree.call)
{
	sprite_index = spr_player_test2_stay;
	sit = 0;
}
if (phy_speed_x == 0 && sprite_index == spr_player_test2_run)
{
	sprite_index = spr_player_test2_stay;
	sit = 0;
}
if ((sprite_index == spr_player_test2_jump_2 || sprite_index == spr_player_test2_jump_1) && phy_speed_y == 0)
{
	sprite_index = spr_player_test2_stay;
	sit = 0;
}
else if (phy_speed_y && sprite_index != spr_player_test2_attack_fly && !stair)
{
	sprite_index = spr_player_test2_jump_2;
}
else if (phy_speed_y < 0 && sprite_index != spr_player_test2_attack_fly && !stair)
{
	sprite_index = spr_player_test2_jump_1;
}
if (((keyboard_check_released(vk_left) || keyboard_check_released(vk_right)) || (!drift && keyboard_check(vk_nokey))) && !strike)
{
	phy_speed_x = 0;
}
if (strike && !temp)
{
	temp = 1;
	alarm[2] = 10;
}
if (sprite_index != spr_player_test2_attack && sprite_index != spr_player_test2_attack_fly)
{
	attack_block = 0;
} 
//-------------------------информация для HUD---------------------------
if (!dialog)
{
	obj_UI.hp_x = hp_current;
	obj_UI.hp = hp;
	obj_UI.stamina = stamina;
	obj_UI.stamina_x = stamina_current;
	obj_UI.blood = blood;
	obj_UI.blood_x = blood_current;
}
//-------------------------реген стамины---------------------------------
if (stamina > stamina_current && !stamina_block)
{
	alarm [3] = regen_st;
	stamina_block = 1;
}
if (!dialog && can_regen && stamina > stamina_current)
{
	stamina_current += 0.2;
}
if (stamina_current < 0)
{
	stamina_current = 0;
}
else if (stamina_current > stamina)
{
	stamina_current = stamina;
}
//-------------------------смерть---------------------------------------
if (hp_current < 0)
{
	room_restart();
}

if (phy_speed_y > 0)
{
	phy_speed_y += 0.05;
}
//-------------------------СПЕЛЛЫ------------------------------------
if (spell_id)
{
	phy_speed_x = 0;
	phy_speed_y = 0;
	can_regen = 0;
	attack_block = 1; //запрет движенияж
	stamina_block = 0; //возобнавляем задержку регена стамины
	stamina_current -= spell_id.stamina_cost;
	blood_current -= spell_id.blood_cost;
	hp_current += spell_id.heal;
	if (spell_id == obj_spell_strike)
	{
		damage = spell_id.damage * str;
		strike = instance_create_layer(x + 22 * image_xscale, y, "player_L", obj_attack_test);
		strike.image_xscale *= image_xscale;
		strike.damage = damage;
		phy_speed_x = 0;
		phy_speed_y = 0;
		if (phy_speed_y == 0)
			sprite_index = spr_player_test2_attack;
		else
			sprite_index = spr_player_test2_attack_fly;
	}
	else if (spell_id == obj_spell_vamp_strike)
	{
		damage = spell_id.damage * int;
		strike = instance_create_layer(x + 22 * image_xscale, y, "player_L", obj_attack_vamp);
		strike.damage = damage;
		strike.image_xscale *= image_xscale;
		phy_speed_x = 0;
		phy_speed_y = 0;
		if (phy_speed_y == 0)
			sprite_index = spr_player_test2_attack;
		else
			sprite_index = spr_player_test2_attack_fly;
	}
	else if (spell_id == obj_spell_heal)
	{
		instance_create_layer(x - 64 + irandom(64), y - 64 + irandom(64), "UI", obj_heal);
	}
	spell_id = 0;
}