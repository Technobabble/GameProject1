/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 32186402
/// @DnDArgument : "var" "units_on_path"
/// @DnDArgument : "op" "3"
if(units_on_path <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 72A26C9A
	/// @DnDParent : 32186402
	/// @DnDArgument : "steps" "room_speed*path_restart_delay"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed*path_restart_delay);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 4164DE42
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 19E1D9B8
	/// @DnDParent : 4164DE42
	/// @DnDArgument : "steps" "room_speed*1"
	alarm_set(0, room_speed*1);
}