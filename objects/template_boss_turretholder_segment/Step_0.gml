/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0F6190F3
/// @DnDArgument : "obj" "template_boss_core_base"
/// @DnDSaveInfo : "obj" "c9ae24a4-ae96-4a5b-8391-4b11b4e89ce9"
var l0F6190F3_0 = false;
l0F6190F3_0 = instance_exists(template_boss_core_base);
if(l0F6190F3_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 495A86DF
	/// @DnDParent : 0F6190F3
	/// @DnDArgument : "x" "template_boss_core_base.x+segment_xOffset"
	/// @DnDArgument : "y" "template_boss_core_base.y+segment_yOffset"
	x = template_boss_core_base.x+segment_xOffset;
	y = template_boss_core_base.y+segment_yOffset;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D0991D0
else
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 24375152
	/// @DnDParent : 2D0991D0
	/// @DnDArgument : "msg" ""Error: No boss core detected""
	show_debug_message(string("Error: No boss core detected"));

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16B8D757
	/// @DnDParent : 2D0991D0
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02A313EF
/// @DnDArgument : "var" "turrets_remaining"
/// @DnDArgument : "op" "3"
if(turrets_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B5C00C4
	/// @DnDParent : 02A313EF
	/// @DnDArgument : "var" "destroyed"
	/// @DnDArgument : "value" "false"
	if(destroyed == false)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 476BF5A0
		/// @DnDParent : 5B5C00C4
		/// @DnDArgument : "spriteind" "destroyed_sprite"
		sprite_index = destroyed_sprite;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 10E7E1C7
		/// @DnDApplyTo : c9ae24a4-ae96-4a5b-8391-4b11b4e89ce9
		/// @DnDParent : 5B5C00C4
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "segments_remaining"
		with(template_boss_core_base) {
		segments_remaining += -1;
		
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 473B4B74
		/// @DnDParent : 5B5C00C4
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "destroyed"
		destroyed = true;
	}
}