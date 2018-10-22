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
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "damage"
damage = 3;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4138798A
/// @DnDArgument : "xscale" "0.25"
/// @DnDArgument : "yscale" "0.25"
image_xscale = 0.25;
image_yscale = 0.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C7926BC
/// @DnDArgument : "expr" "room_speed*0.2"
/// @DnDArgument : "var" "refire_delay"
refire_delay = room_speed*0.2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 304E746C
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "fireline_spacing"
fireline_spacing = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FAF0687
/// @DnDArgument : "expr" ""Oscillating""
/// @DnDArgument : "var" "multishot_type"
multishot_type = "Oscillating";