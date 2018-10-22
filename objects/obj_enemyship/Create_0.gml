/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AC082A5
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "score_value"
score_value = 5;

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
/// @DnDArgument : "var" "local_vspeed"
local_vspeed = 2;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 36C8C67D
/// @DnDArgument : "xscale" "0.3"
/// @DnDArgument : "yscale" "0.3"
image_xscale = 0.3;
image_yscale = 0.3;