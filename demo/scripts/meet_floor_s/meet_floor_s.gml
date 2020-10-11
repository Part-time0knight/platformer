function meet_floor_s(argument0, argument1, argument2, argument3) {
	var x1, x2, y1, summ;
	x1 = round(argument0 - round(argument2/5));
	y1 =  round(argument1 + round(argument3/2.4));
	x2 = round(argument0 + round(argument2/5));
	summ = collision_line( x1, y1, x2, y1, obj_brik, 1, 0);
	return (summ);


}
