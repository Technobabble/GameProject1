/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 2B361DC2
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0A5BB4F9
/// @DnDArgument : "speed" "20"
speed = 20;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6FDB5FA3
/// @DnDArgument : "expr" "vspeed"
/// @DnDArgument : "var" "vspeed_base"
vspeed_base = vspeed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5675F721
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "damage"
damage = 10;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4138798A
/// @DnDArgument : "xscale" "0.25"
/// @DnDArgument : "yscale" "0.25"
image_xscale = 0.25;
image_yscale = 0.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 38432F85
/// @DnDArgument : "expr" "room_speed*0.15"
/// @DnDArgument : "var" "refire_delay"
refire_delay = room_speed*0.15;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2A8EC000
/// @DnDArgument : "expr" "13"
/// @DnDArgument : "var" "fireline_spacing"
fireline_spacing = 13;