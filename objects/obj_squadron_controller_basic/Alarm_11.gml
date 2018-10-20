/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0269AAC4
/// @DnDArgument : "code" "$(13_10)new_unit = instance_create_layer(path_get_point_x(target_path,0), path_get_point_y(target_path,0), unit_layer, unit_type);$(13_10)with (new_unit)$(13_10){$(13_10)	transform_parent = other;$(13_10)	image_xscale = 0.3;$(13_10)	image_yscale = 0.3;$(13_10)		$(13_10)	path_start(other.target_path, other.local_pathSpeed, path_action_stop, true);$(13_10)		$(13_10)	other.units_on_path++;$(13_10)}$(13_10)child_units[units_remaining] = new_unit;$(13_10)units_remaining++;$(13_10)show_debug_message("Spawned Unit");"

new_unit = instance_create_layer(path_get_point_x(target_path,0), path_get_point_y(target_path,0), unit_layer, unit_type);
with (new_unit)
{
	transform_parent = other;
	image_xscale = 0.3;
	image_yscale = 0.3;
		
	path_start(other.target_path, other.local_pathSpeed, path_action_stop, true);
		
	other.units_on_path++;
}
child_units[units_remaining] = new_unit;
units_remaining++;
show_debug_message("Spawned Unit");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64ED055E
/// @DnDArgument : "var" "units_remaining"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "numUnits"
if(units_remaining < numUnits)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 63AB4597
	/// @DnDParent : 64ED055E
	/// @DnDArgument : "steps" "room_speed *spawn_delay"
	/// @DnDArgument : "alarm" "11"
	alarm_set(11, room_speed *spawn_delay);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 13B81AC4
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 36C0CFE2
	/// @DnDParent : 13B81AC4
	/// @DnDArgument : "steps" "room_speed * 1"
	alarm_set(0, room_speed * 1);
}