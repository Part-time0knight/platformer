/// @description
if (keyboard_check_released(ord(1)))
{
	instance_destroy();
	instance_create_layer(x, y, "UI", obj_dialog_1111_1111_1111_111);
}