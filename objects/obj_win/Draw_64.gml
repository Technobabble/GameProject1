/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1AA0FAF4
/// @DnDArgument : "x" "room_width/2-100"
/// @DnDArgument : "y" "room_height/2-100"
/// @DnDArgument : "xscale" "3"
/// @DnDArgument : "yscale" "3"
/// @DnDArgument : "caption" ""Final Score: ""
/// @DnDArgument : "text" "score"
draw_text_transformed(room_width/2-100, room_height/2-100, string("Final Score: ") + string(score), 3, 3, 0);