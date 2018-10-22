/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 2B361DC2
/// @DnDArgument : "direction" "90"
direction = 90;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0A5BB4F9
/// @DnDArgument : "speed" "17"
speed = 17;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6FDB5FA3
/// @DnDArgument : "expr" "vspeed"
/// @DnDArgument : "var" "vspeed_base"
vspeed_base = vspeed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5675F721
/// @DnDArgument : "expr" "5"
/// @DnDArgument : "var" "damage"
damage = 5;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4138798A
/// @DnDArgument : "xscale" "0.4"
/// @DnDArgument : "yscale" "0.4"
image_xscale = 0.4;
image_yscale = 0.4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4026F71A
/// @DnDArgument : "expr" "room_speed*0.3"
/// @DnDArgument : "var" "refire_delay"
refire_delay = room_speed*0.3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50614C09
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "fireline_spacing"
fireline_spacing = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2F5FC18C
/// @DnDArgument : "expr" ""Spread""
/// @DnDArgument : "var" "multishot_type"
multishot_type = "Spread";