/// @description
if (call)
{
	draw_self();
}
if (set_number)
{
	draw_set_alpha(0.7);
	draw_set_color(c_black);
	draw_rectangle(x - 128, y - 64, x + 128, y + 64, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_font(font);
	draw_text_color(x - 100, y - 16, "выберете ячейку для способности", c_white, c_white, c_white, c_white, 100);
}
