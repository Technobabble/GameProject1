/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 671EBAC0
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "current_step"
current_step += 1;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 26E1C9F0
/// @DnDArgument : "code" "current_scale = (current_step/room_speed) * max_scale /duration;"
current_scale = (current_step/room_speed) * max_scale /duration;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 02748F4D
/// @DnDArgument : "xscale" "current_scale"
/// @DnDArgument : "yscale" "current_scale"
image_xscale = current_scale;
image_yscale = current_scale;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18A965B2
/// @DnDArgument : "var" "current_scale"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "max_scale"
if(current_scale > max_scale)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5BFD465D
	/// @DnDDisabled : 1
	/// @DnDParent : 18A965B2
	/// @DnDArgument : "var" "current_step"


	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6017CCB9
	/// @DnDParent : 18A965B2
	instance_destroy();
}