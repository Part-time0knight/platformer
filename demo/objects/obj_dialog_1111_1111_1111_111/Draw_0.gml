/// @description
draw_self();
draw_set_font(font);
draw_set_color(c_white);

draw_text(x + sprite_width/ 20, y + sprite_height / 20, name + " -Забери меч, не действуй мне на нервы.");
for (i = 0; i < numb; ++i)
{
	if (string_questions[i] != 0)
		draw_text_ext(x + sprite_width/ 20, y + sprite_height / 3.8 + 20 * i, string_questions[i], 20, 400);
}