/// @description 
for (i = 0; i < 12; ++ i)
{
	spell_ind[i] = 0;
	can_strike[i] = 1;
}
spell_ind[0] = obj_spell_strike;
spell_ind[1] = obj_spell_vamp_strike;
spell_ind[2] = obj_spell_heal;
obj_spell_vamp_strike.ind = 1;
obj_spell_vamp_strike.old_ind = 1;
obj_spell_heal.old_ind = 2;
obj_spell_heal.ind = 2;