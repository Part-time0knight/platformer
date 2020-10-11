/// @description эффект
damage = instance_create_layer(x, y, "button", obj_effect_enemy_attack);
damage.damage = attack;
damage.image_xscale = image_xscale;
damage.x += damage.image_xscale * damage.sprite_width * 2;
damage.image_xscale *= 1.5;
