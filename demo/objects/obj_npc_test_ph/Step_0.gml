/// @description игрок рядом
if (collision_rectangle(x - sprite_width/2, y + sprite_height/2, x + sprite_width/2, y - sprite_height/2, obj_player_test_ph, 0, 1))
{
	if ((keyboard_check(ord("e")) || keyboard_check(ord("E"))) && !obj_spell_tree.call)
	{
		dialog = instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 4.8, (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2), "UI", obj_dialog_1);
		dialog.name = name;
	}
	near = 1;
}
else
	near = 0;
if (!temp)
{
	alarm[0] = 30;
	temp = 1;
}