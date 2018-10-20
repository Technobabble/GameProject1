/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7EFF3F8B
/// @DnDArgument : "code" "$(13_10)$(13_10)with (child_units[units_on_path])$(13_10){$(13_10)	x= path_get_point_x(other.target_path,0);$(13_10)	y= path_get_point_y(other.target_path,0);$(13_10)	$(13_10)	path_start(other.target_path, other.local_pathSpeed, path_action_stop, true);$(13_10)		$(13_10)	other.units_on_path++;$(13_10)}$(13_10)$(13_10)show_debug_message("Restarted Unit");"


with (child_units[units_on_path])
{
	x= path_get_point_x(other.target_path,0);
	y= path_get_point_y(other.target_path,0);
	
	path_start(other.target_path, other.local_pathSpeed, path_action_stop, true);
		
	other.units_on_path++;
}

show_debug_message("Restarted Unit");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DE807DF
/// @DnDArgument : "var" "units_on_path"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "units_remaining"
if(units_on_path < units_remaining)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1DD83963
	/// @DnDParent : 4DE807DF
	/// @DnDArgument : "steps" "room_speed * spawn_delay"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed * spawn_delay);
}