/// @description прыжок
stayground = meet_brik_ph(x - round(sprite_height / 7.5), y + round(sprite_height / 1.95), x + round(sprite_height / 5.5), y + round(sprite_height / 1.95));
if (!dialog && stayground && can_jump && stamina_current > 10 && !attack_block)
{
	can_regen = 0;
	stamina_block = 0;
	stamina_current -= 10;
	stair = 0;
	phy_speed_y = - jump;
	can_jump = 0;
	alarm[0] = 100;
	
}
