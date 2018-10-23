/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 222CEF7D
/// @DnDArgument : "code" "segment_xOffset = -(obj_boss_core.sprite_width/2 + sprite_width/2);$(13_10)segment_yOffset = 0;$(13_10)$(13_10)turret_positions[2] = [52,-8];$(13_10)turret_positions[1] = [6,-8];$(13_10)turret_positions[0] = [-40,-8];$(13_10)turret_type[2] = obj_boss_cannon;$(13_10)turret_type[1] = obj_boss_cannon;$(13_10)turret_type[0] = obj_boss_cannon;$(13_10)$(13_10)destroyed_sprite = spr_boss_wingL;$(13_10)$(13_10)turret_scale = 0.6;$(13_10)event_inherited();$(13_10)/*$(13_10)turrets_remaining=0;$(13_10)child_turrets[array_length_1d(turret_positions)-1]= 0;$(13_10)for(i = 0; i < array_length_1d(turret_positions); i++){$(13_10)	tpos = turret_positions[i];$(13_10)	new_turret = instance_create_layer(x + tpos[0], y + tpos[1], "Turrets", obj_boss_cannon);$(13_10)	with (new_turret)$(13_10)   {$(13_10)		transform_parent = other;$(13_10)		image_xscale = 0.3;$(13_10)		image_yscale = 0.3;$(13_10)		$(13_10)		xOffset = other.tpos[0];$(13_10)		yOffset = other.tpos[1];$(13_10)		other.turrets_remaining++;$(13_10)   }$(13_10)   child_turrets[i] = new_turret;$(13_10)}*/"
segment_xOffset = -(obj_boss_core.sprite_width/2 + sprite_width/2);
segment_yOffset = 0;

turret_positions[2] = [52,-8];
turret_positions[1] = [6,-8];
turret_positions[0] = [-40,-8];
turret_type[2] = obj_boss_cannon;
turret_type[1] = obj_boss_cannon;
turret_type[0] = obj_boss_cannon;

destroyed_sprite = spr_boss_wingL;

turret_scale = 0.6;
event_inherited();
/*
turrets_remaining=0;
child_turrets[array_length_1d(turret_positions)-1]= 0;
for(i = 0; i < array_length_1d(turret_positions); i++){
	tpos = turret_positions[i];
	new_turret = instance_create_layer(x + tpos[0], y + tpos[1], "Turrets", obj_boss_cannon);
	with (new_turret)
   {
		transform_parent = other;
		image_xscale = 0.3;
		image_yscale = 0.3;
		
		xOffset = other.tpos[0];
		yOffset = other.tpos[1];
		other.turrets_remaining++;
   }
   child_turrets[i] = new_turret;
}*//**/