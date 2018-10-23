/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32B195C4
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "destroyed"
destroyed = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5C405E1A
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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4208EE64
/// @DnDArgument : "expr" "y-160"
/// @DnDArgument : "var" "y"
y = y-160;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4630EE3A
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
image_xscale = 2;
image_yscale = 2;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0661BBA7
/// @DnDArgument : "objectid" "obj_boss2_wingL"
/// @DnDArgument : "layer" ""Bosses""
/// @DnDSaveInfo : "objectid" "33cf60c8-9756-412c-b5b2-25f184bbb4ba"
instance_create_layer(0, 0, "Bosses", obj_boss2_wingL);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 500895B6
/// @DnDArgument : "objectid" "obj_boss2_wingR"
/// @DnDArgument : "layer" ""Bosses""
/// @DnDSaveInfo : "objectid" "c28862c3-f6fb-481e-9015-7ccddf927e13"
instance_create_layer(0, 0, "Bosses", obj_boss2_wingR);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 05F09651
/// @DnDArgument : "objectid" "obj_boss2_core_turrets"
/// @DnDArgument : "layer" ""Danger""
/// @DnDSaveInfo : "objectid" "3c6df9d4-47c6-4e03-b26d-cfa055ab0f79"
instance_create_layer(0, 0, "Danger", obj_boss2_core_turrets);