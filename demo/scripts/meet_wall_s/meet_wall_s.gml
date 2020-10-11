function meet_wall_s(argument0, argument1, argument2, argument3, argument4) {
	var x1, x2, y1, y2, l, ls, r, rs;
	x1 = round(argument0 - round(argument2/4));
	y1 =  round(argument1 + round(argument3/2.8));
	x2 = round(argument0 - round(argument2/4));
	y2 = round(argument1 - round(argument3/3.6));
	l = collision_line( x1, y1, x2, y2, obj_brik, 1, 0);
	ls = collision_line( x1, y1, x2, y2, obj_stairs, 1, 0);
	x1 = round(argument0 + round(argument2/4));
	y1 =  round(argument1 + round(argument3/2.8));
	x2 = round(argument0 + round(argument2/4));
	y2 = round(argument1 - round(argument3/3.6));
	r = collision_line( x1, y1, x2, y2, obj_brik, 1, 0);
	rs = collision_line( x1, y1, x2, y2, obj_stairs, 1, 0);
	if (argument4)
	{
		if (l > 0)
			return -1;
		else if (r > 0)
			return 1; //Столкновение справа
		else if (ls > 0)
			return -2;
		else if (rs > 0)
			return 2;
		else
			return 0;//нет столкновений
	}
	else
	{
		if (l > 0)
			return 1;
		else if (r > 0)
			return -1;//столкновение слева
		else if (ls > 0)
			return 2;
		else if (rs > 0)
			return -2;
		else
			return 0;
	}


}
