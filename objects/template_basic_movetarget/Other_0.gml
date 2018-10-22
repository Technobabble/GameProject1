/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34F282B2
/// @DnDArgument : "var" "entered_play_area"
/// @DnDArgument : "value" "true"
if(entered_play_area == true)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1FD13215
	/// @DnDParent : 34F282B2
	/// @DnDArgument : "x" "random_range(sprite_width/2,room_width-(sprite_width/2))"
	/// @DnDArgument : "y" "-200"
	x = random_range(sprite_width/2,room_width-(sprite_width/2));
	y = -200;
}