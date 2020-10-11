/// @description
draw_self();
draw_set_font(font);
draw_set_color(c_white);

draw_text_ext(x + sprite_width/ 20, y + sprite_height / 20, name + " -Она до сих пор в могиле. Лишь бы не восстала, а то проблем – с не наберемся. (отдает меч)", 20, 400);
for (i = 0; i < numb; ++i)
{
	if (string_questions[i] != 0)
		draw_text_ext(x + sprite_width/ 20, y + sprite_height / 3.8 + 20 * i, string_questions[i], 20, 400);
}