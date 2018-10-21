/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F3A2D85
/// @DnDArgument : "code" "//When the player reaches the top of the play area we increase the vspeed$(13_10)//of the background and foreground (lvl_speed_actual) to give the feeling$(13_10)//that they are travelling faster even though they arent moving farther forward$(13_10)lvl_vspeed_actual = (lvl_vspeed_base + lvl_vspeed_offset) * time_scale$(13_10)layer_vspeed("Background", (bg_vspeed_base +bg_vspeed_offset)*time_scale);"
//When the player reaches the top of the play area we increase the vspeed
//of the background and foreground (lvl_speed_actual) to give the feeling
//that they are travelling faster even though they arent moving farther forward
lvl_vspeed_actual = (lvl_vspeed_base + lvl_vspeed_offset) * time_scale
layer_vspeed("Background", (bg_vspeed_base +bg_vspeed_offset)*time_scale);