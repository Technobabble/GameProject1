/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 649FB301
/// @DnDArgument : "expr" "obj_blast2"
/// @DnDArgument : "var" "current_projectile"
current_projectile = obj_blast2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3E1265F1
/// @DnDArgument : "expr" "path2"
/// @DnDArgument : "var" "current_path"
current_path = path2;

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 7CDCA8C8
/// @DnDArgument : "x" "path_get_point_x(current_path,0)"
/// @DnDArgument : "y" "path_get_point_y(current_path,0)"
x = path_get_point_x(current_path,0);
y = path_get_point_y(current_path,0);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 55447DD6
/// @DnDArgument : "path" "current_path"
/// @DnDArgument : "speed" "10"
path_start(current_path, 10, path_action_stop, false);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2BAB2BA6
/// @DnDArgument : "steps" "room_speed/4"
alarm_set(0, room_speed/4);