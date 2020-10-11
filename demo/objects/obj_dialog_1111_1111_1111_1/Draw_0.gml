/// @description
draw_self();
draw_set_font(font);
draw_set_color(c_white);
draw_text_ext(x + sprite_width/ 20, y + sprite_height / 20, name + " -Простые. Что было живым, потом долго было мертвым, а потом провело в могиле 66 лет и восстало?", 20, 400);
k = 0;
temp = 50;
for (i = 0; i < numb; ++i)
{
	if (string_questions[i] != 0)
		draw_text_ext(x + sprite_width/ 20, y + sprite_height / 3.8 + 20 * (i + k), string_questions[i], 20, 400);
	while (string_length(string_questions[i]) > temp)
	{
		k += 1;
		temp += 50;
	}
}