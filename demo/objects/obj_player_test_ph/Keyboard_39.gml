/// @description движение вправо
if (!dialog)
{
	if (sprite_index == spr_player_test2_stay)
		sprite_index = spr_player_test2_run;
	if (!attack_block && !sit)
		phy_speed_x = movespeed;
	image_xscale = 1;
}