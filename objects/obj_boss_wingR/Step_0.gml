/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 387CE7D0
/// @DnDArgument : "obj" "obj_boss_core"
/// @DnDSaveInfo : "obj" "a4332918-8045-4b66-88a1-f73c4f98249d"
var l387CE7D0_0 = false;
l387CE7D0_0 = instance_exists(obj_boss_core);
if(l387CE7D0_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0587E1A6
	/// @DnDParent : 387CE7D0
	/// @DnDArgument : "x" "obj_boss_core.x+(obj_boss_core.sprite_width/2 + sprite_width/2)"
	/// @DnDArgument : "y" "obj_boss_core.y"
	x = obj_boss_core.x+(obj_boss_core.sprite_width/2 + sprite_width/2);
	y = obj_boss_core.y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5474847B
else
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 68FF9374
	/// @DnDParent : 5474847B
	/// @DnDArgument : "msg" ""Error: No boss core detected""
	show_debug_message(string("Error: No boss core detected"));

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1E781EEF
	/// @DnDParent : 5474847B
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21F93599
/// @DnDArgument : "var" "turrets_remaining"
/// @DnDArgument : "op" "3"
if(turrets_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4100DEB7
	/// @DnDParent : 21F93599
	instance_destroy();
}