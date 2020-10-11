function draw_slot(argument0, argument1, argument2, argument3, argument4) {
	//argument0 (0 - первый слот, 1 - очередной слот, 2 - последний слот), argument1 - x, argument2 - y, argument3 - кнопка, argument3 = id спелла
	//argument4 горячая клавиша
	var slot;
	switch (argument0)
	{
		case 0:
			slot = draw_sprite(spr_spell_slot_first, 0, argument1 - 10, argument2);
			break;
		case 1:
			slot = draw_sprite(spr_spell_slot, 0, argument1, argument2);
			break;
		case 2:
			slot = draw_sprite(spr_spell_slot_last, 0, argument1, argument2);
			break;
	}
	if (argument3)
	{
		draw_sprite(argument3, 0, argument1 + 8, argument2 + 4);
	}
	draw_set_color(c_white);
	draw_text(argument1 + 30, argument2 + 16, argument4);
	return slot;


}
