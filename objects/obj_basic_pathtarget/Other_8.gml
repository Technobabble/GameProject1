/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0967603A
/// @DnDArgument : "x" "transform_parent.x"
/// @DnDArgument : "y" "transform_parent.y"
x = transform_parent.x;
y = transform_parent.y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0CA2E5AE
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "transform_parent.units_on_path"
transform_parent.units_on_path += -1;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7A0753A9
/// @DnDArgument : "msg" ""Units on path: " + string(transform_parent.units_on_path)"
show_debug_message(string("Units on path: " + string(transform_parent.units_on_path)));