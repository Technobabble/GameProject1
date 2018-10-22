/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F27D99E
/// @DnDArgument : "code" "instance_destroy(current_laser,true);$(13_10)laser_active = false"
instance_destroy(current_laser,true);
laser_active = false

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6010E7C5
/// @DnDArgument : "steps" "room_speed/8"
alarm_set(0, room_speed/8);