/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 2D52BDC3
/// @DnDArgument : "health" "20"

__dnd_health = real(20);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 66F9BA65
/// @DnDArgument : "steps" "room_speed * 5"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 5);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 723BB39E
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "local_speed"
local_speed = 2;