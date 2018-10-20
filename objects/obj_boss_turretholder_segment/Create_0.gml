/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6910F009
/// @DnDArgument : "code" "$(13_10)turrets_remaining=0;$(13_10)child_turrets[array_length_1d(turret_positions)-1]= 0;$(13_10)for(i = 0; i < array_length_1d(turret_positions); i++){$(13_10)	tpos = turret_positions[i];$(13_10)	new_turret = instance_create_layer(x + tpos[0], y + tpos[1], "Turrets", obj_boss_cannon);$(13_10)	with (new_turret)$(13_10)   {$(13_10)		transform_parent = other;$(13_10)		image_xscale = 0.3;$(13_10)		image_yscale = 0.3;$(13_10)		$(13_10)		xOffset = other.tpos[0];$(13_10)		yOffset = other.tpos[1];$(13_10)		other.turrets_remaining++;$(13_10)   }$(13_10)   child_turrets[i] = new_turret;$(13_10)}"

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
}