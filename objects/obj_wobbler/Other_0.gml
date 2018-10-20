/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 47032149
/// @DnDArgument : "expr" "entered_play_area"
if(entered_play_area)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1FD13215
	/// @DnDParent : 47032149
	/// @DnDArgument : "x" "random_range(sprite_width/2,room_width-(sprite_width/2))"
	/// @DnDArgument : "y" "-200"
	x = random_range(sprite_width/2,room_width-(sprite_width/2));
	y = -200;
}