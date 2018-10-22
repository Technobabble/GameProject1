/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 222F4BA1
/// @DnDArgument : "code" "//	Character Movement States$(13_10)enum Movement $(13_10){$(13_10)	up,$(13_10)	diagUpLeft,$(13_10)	diagUpRight,$(13_10)	down,$(13_10)	diagDownLeft,$(13_10)	diagDownRight,$(13_10)	left,$(13_10)	right,$(13_10)	idle$(13_10)}$(13_10)$(13_10)num_strikers =2;$(13_10)current_strikers = 2;$(13_10)striker_cooldown[0] = 30*room_speed;$(13_10)striker_cooldown[1] = 45*room_speed;$(13_10)current_striker_cooldown[0] = 5*room_speed;$(13_10)current_striker_cooldown[1] = 15*room_speed;"
//	Character Movement States
enum Movement 
{
	up,
	diagUpLeft,
	diagUpRight,
	down,
	diagDownLeft,
	diagDownRight,
	left,
	right,
	idle
}

num_strikers =2;
current_strikers = 2;
striker_cooldown[0] = 30*room_speed;
striker_cooldown[1] = 45*room_speed;
current_striker_cooldown[0] = 5*room_speed;
current_striker_cooldown[1] = 15*room_speed;

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 210C7A3E
/// @DnDArgument : "lives" "3"

__dnd_lives = real(3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D14C8B3
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "max_health"
max_health = 30;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 700D4F5B
/// @DnDArgument : "health" "max_health"

__dnd_health = real(max_health);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0AB23850
/// @DnDArgument : "expr" "1.5"
/// @DnDArgument : "var" "player_respawn_time"
player_respawn_time = 1.5;