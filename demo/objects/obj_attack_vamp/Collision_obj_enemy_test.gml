obj_enemy_test.hp -= damage;
obj_enemy_test.take_damage = 1;
obj_player_test_ph.blood_current += 50;
if (!obj_enemy_test.hp)
{
	instance_destroy(obj_enemy_test);
}