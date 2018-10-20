/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 222F4BA1
/// @DnDArgument : "code" "//	Character Movement States$(13_10)enum Movement $(13_10){$(13_10)	up,$(13_10)	diagUpLeft,$(13_10)	diagUpRight,$(13_10)	down,$(13_10)	diagDownLeft,$(13_10)	diagDownRight,$(13_10)	left,$(13_10)	right,$(13_10)	idle$(13_10)}$(13_10)"
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