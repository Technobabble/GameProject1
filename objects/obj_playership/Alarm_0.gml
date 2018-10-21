/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0EAD2451
/// @DnDArgument : "expr" "image_alpha == 1"
if(image_alpha == 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 7C49BFD8
	/// @DnDParent : 0EAD2451
	/// @DnDArgument : "alpha" "0.5"
	image_alpha = 0.5;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E26D12A
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 1437E83A
	/// @DnDParent : 3E26D12A
	image_alpha = 1;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 023C86C2
/// @DnDArgument : "steps" "room_speed*0.1"
alarm_set(0, room_speed*0.1);