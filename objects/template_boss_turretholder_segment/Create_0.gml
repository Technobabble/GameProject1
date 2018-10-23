/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6910F009
/// @DnDArgument : "code" "turret_firing_offset = room_speed * 0.5;$(13_10)offset_turret_firing = true;$(13_10)$(13_10)turrets_remaining=0;$(13_10)child_turrets[array_length_1d(turret_positions)-1]= 0;$(13_10)for(i = 0; i < array_length_1d(turret_positions); i++){$(13_10)	tpos = turret_positions[i];$(13_10)	new_turret = instance_create_layer(x + tpos[0], y + tpos[1], "Turrets", turret_type[i]);$(13_10)	with (new_turret)$(13_10)   {$(13_10)		transform_parent = other;$(13_10)		image_xscale = other.image_xscale*other.turret_scale;$(13_10)		image_yscale = other.image_yscale*other.turret_scale;$(13_10)		$(13_10)		xOffset = other.tpos[0]*other.image_xscale;$(13_10)		yOffset = other.tpos[1]*other.image_yscale;$(13_10)		$(13_10)		if(other.offset_turret_firing){$(13_10)			current_refire_wait += other.turret_firing_offset * other.i$(13_10)		}$(13_10)		$(13_10)		other.turrets_remaining++;$(13_10)   }$(13_10)   child_turrets[i] = new_turret;$(13_10)}"
turret_firing_offset = room_speed * 0.5;
offset_turret_firing = true;

turrets_remaining=0;
child_turrets[array_length_1d(turret_positions)-1]= 0;
for(i = 0; i < array_length_1d(turret_positions); i++){
	tpos = turret_positions[i];
	new_turret = instance_create_layer(x + tpos[0], y + tpos[1], "Turrets", turret_type[i]);
	with (new_turret)
   {
		transform_parent = other;
		image_xscale = other.image_xscale*other.turret_scale;
		image_yscale = other.image_yscale*other.turret_scale;
		
		xOffset = other.tpos[0]*other.image_xscale;
		yOffset = other.tpos[1]*other.image_yscale;
		
		if(other.offset_turret_firing){
			current_refire_wait += other.turret_firing_offset * other.i
		}
		
		other.turrets_remaining++;
   }
   child_turrets[i] = new_turret;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6B1F1C66
/// @DnDApplyTo : c9ae24a4-ae96-4a5b-8391-4b11b4e89ce9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "segments_remaining"
with(template_boss_core_base) {
segments_remaining += 1;

}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 627F1AE8
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "destroyed"
destroyed = false;