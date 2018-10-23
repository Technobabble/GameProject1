/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04EB781B
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "destroyed"
destroyed = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5332215B
/// @DnDArgument : "var" "segments_remaining"
segments_remaining = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69369F6F
/// @DnDArgument : "expr" "0.5"
/// @DnDArgument : "var" "local_speed"
local_speed = 0.5;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 16697304
/// @DnDArgument : "speed" "local_speed"
/// @DnDArgument : "type" "1"
hspeed = local_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 58156D26
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "hdir"
hdir = 1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0661BBA7
/// @DnDArgument : "objectid" "obj_boss_wingL"
/// @DnDArgument : "layer" ""Bosses""
/// @DnDSaveInfo : "objectid" "3fdc9c8c-ee24-45c2-b137-8cded71650c3"
instance_create_layer(0, 0, "Bosses", obj_boss_wingL);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 500895B6
/// @DnDArgument : "objectid" "obj_boss_wingR"
/// @DnDArgument : "layer" ""Bosses""
/// @DnDSaveInfo : "objectid" "e1da3a84-b350-4192-9596-79c7051c3cab"
instance_create_layer(0, 0, "Bosses", obj_boss_wingR);