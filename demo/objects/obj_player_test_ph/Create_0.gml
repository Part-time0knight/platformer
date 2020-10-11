/// @description формирование переменных
// You can write your code in this editor
phy_fixed_rotation = true;
movespeed = 4;
stayground = false;
jump = 8;
can_jump = 1;
attack_block = 0;
attack_pause = 0;
sit = 0;
stair = 0;
drift = 0;
strike = 0;
temp = 0;
//первичные характеристики 
str = 10; //сила
const = 10; //телосложение
int = 10;
//вторичные характиристики
hp = const * 10 + str * 2;
hp_current = hp;
hp_block = 0;
stamina = const * 4 + str;
stamina_current = stamina;
stamina_block = 0;
can_regen = 1;
damage = 0;
blood = 115;
blood_current = 30;
spell_id = 0;
regen_st = 90;
dialog = 0;