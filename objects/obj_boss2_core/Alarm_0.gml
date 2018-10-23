/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 152F6BE8
/// @DnDArgument : "xpos" "70"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "80"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_effect"
/// @DnDSaveInfo : "objectid" "5d016581-d618-4894-ae20-153b29fd0629"
instance_create_layer(x + 70, y + 80, "Instances", obj_explosion_effect);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F5A6385
/// @DnDArgument : "xpos" "-50"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "40"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_effect"
/// @DnDSaveInfo : "objectid" "5d016581-d618-4894-ae20-153b29fd0629"
instance_create_layer(x + -50, y + 40, "Instances", obj_explosion_effect);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 667384D8
/// @DnDArgument : "steps" "room_speed*4"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed*4);

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 37FEE438
room_goto_next();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 47A9DA9A
/// @DnDArgument : "expr" "obj_playerController.player_score"
/// @DnDArgument : "var" "obj_game_manager.player_score"
obj_game_manager.player_score = obj_playerController.player_score;