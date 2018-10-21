/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 54C3E53B
/// @DnDArgument : "angle" "direction+90"
image_angle = direction+90;

/// @DnDAction : YoYo Games.Paths.Path_Speed
/// @DnDVersion : 1
/// @DnDHash : 4ECF8C17
/// @DnDArgument : "speed" "local_pathSpeed* obj_roomManager.time_scale"
path_speed = local_pathSpeed* obj_roomManager.time_scale;