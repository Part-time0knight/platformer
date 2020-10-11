/// @description присяд
if (!dialog && sprite_index != spr_player_test2_jump_2 && sprite_index != spr_player_test2_jump_1 && sprite_index != spr_player_test2_attack_fly && !attack_block)
{
	phy_speed_x = 0;
	sprite_index = spr_player_test2_sit;
	sit = 1;
}