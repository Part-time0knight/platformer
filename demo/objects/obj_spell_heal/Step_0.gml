/// @description
if (old_ind != ind)
{
	if (obj_spell_slot.spell_ind[old_ind] == obj_spell_heal)
		obj_spell_slot.spell_ind[old_ind] = 0;
	old_ind = ind;
}
if (!obj_spell_tree.call && cd_now)
{
	--cd_now;
}