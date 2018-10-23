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
/// @DnDArgument : "xpos" "50"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-30"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion_effect"
/// @DnDSaveInfo : "objectid" "5d016581-d618-4894-ae20-153b29fd0629"
instance_create_layer(x + 50, y + -30, "Instances", obj_explosion_effect);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2C478874
/// @DnDArgument : "steps" "room_speed*0.3"
alarm_set(0, room_speed*0.3);