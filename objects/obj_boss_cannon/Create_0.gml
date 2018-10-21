/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18238EF4
/// @DnDArgument : "code" "xOffset = 0;$(13_10)yOffset= 0;$(13_10)current_refire_wait = room_speed*4;"
xOffset = 0;
yOffset= 0;
current_refire_wait = room_speed*4;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 53C506AD
/// @DnDArgument : "health" "40"

__dnd_health = real(40);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5258B67A
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "score_value"
score_value = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26D21062
/// @DnDArgument : "expr" "room_speed * 4"
/// @DnDArgument : "var" "refire_delay"
refire_delay = room_speed * 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35F33717
/// @DnDArgument : "expr" "obj_enemyblast2"
/// @DnDArgument : "var" "current_projectile"
current_projectile = obj_enemyblast2;