/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D604BF1
/// @DnDArgument : "xpos" "75"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemyblast1"
/// @DnDArgument : "layer" ""Projectiles""
/// @DnDSaveInfo : "objectid" "49c92ca5-e7a6-4f24-918e-e12a73adff90"
instance_create_layer(x + 75, y + 0, "Projectiles", obj_enemyblast1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 17FC387E
/// @DnDArgument : "xpos" "25"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemyblast1"
/// @DnDArgument : "layer" ""Projectiles""
/// @DnDSaveInfo : "objectid" "49c92ca5-e7a6-4f24-918e-e12a73adff90"
instance_create_layer(x + 25, y + 0, "Projectiles", obj_enemyblast1);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 39248EB8
/// @DnDArgument : "steps" "room_speed * 3"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 3);