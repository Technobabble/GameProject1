/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6B30E79A
/// @DnDArgument : "speed" "(obj_roomManager.lvl_vspeed_actual + local_vspeed) * obj_roomManager.time_scale"
/// @DnDArgument : "type" "2"
vspeed = (obj_roomManager.lvl_vspeed_actual + local_vspeed) * obj_roomManager.time_scale;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79D6BBB9
/// @DnDArgument : "var" "entered_play_area"
entered_play_area = 0;