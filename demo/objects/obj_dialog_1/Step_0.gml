/// @description
if (keyboard_check_released(ord(1)))
{
	instance_destroy();
	instance_create_layer(x, y, "UI", obj_dialog_11);
}
if (keyboard_check_released(ord(2)))
{
	instance_destroy();
	instance_create_layer(x, y, "UI", obj_dialog_12);
}
if (keyboard_check_released(ord(3)))
{
	instance_destroy();
	instance_create_layer(x, y, "UI", obj_dialog_13);
}
if (keyboard_check_released(ord(4)))
{
	instance_destroy();
	instance_create_layer(x, y, "UI", obj_dialog_14);
}
if (keyboard_check_released(ord(5)))
{
	instance_destroy();
}