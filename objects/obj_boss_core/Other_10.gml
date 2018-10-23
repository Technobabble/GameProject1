/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6597469E
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_game_manager.strikers_unlocked"
obj_game_manager.strikers_unlocked += 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 76B1F549
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_effect"
/// @DnDSaveInfo : "objectid" "5d016581-d618-4894-ae20-153b29fd0629"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion_effect);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4A1A2BAA
/// @DnDArgument : "xpos" "150"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-130"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_effect"
/// @DnDSaveInfo : "objectid" "5d016581-d618-4894-ae20-153b29fd0629"
instance_create_layer(x + 150, y + -130, "Instances", obj_explosion_effect);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2C478874
/// @DnDArgument : "steps" "room_speed*0.3"
alarm_set(0, room_speed*0.3);