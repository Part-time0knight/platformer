function meet_brik_ph(argument0, argument1, argument2, argument3) {
	return collision_line(argument0, argument1, argument2, argument3, obj_brik_ph, 1, 0) + collision_line(argument0, argument1, argument2, argument3, obj_stairs_ph, 1, 0);


}
