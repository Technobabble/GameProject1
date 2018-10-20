/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 39CC8100
/// @DnDArgument : "obj" "obj_boss_core"
/// @DnDSaveInfo : "obj" "a4332918-8045-4b66-88a1-f73c4f98249d"
var l39CC8100_0 = false;
l39CC8100_0 = instance_exists(obj_boss_core);
if(l39CC8100_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1CEA79DE
	/// @DnDParent : 39CC8100
	/// @DnDArgument : "x" "obj_boss_core.x-(obj_boss_core.sprite_width/2 + sprite_width/2)"
	/// @DnDArgument : "y" "obj_boss_core.y"
	x = obj_boss_core.x-(obj_boss_core.sprite_width/2 + sprite_width/2);
	y = obj_boss_core.y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 39386696
else
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 000820F2
	/// @DnDParent : 39386696
	/// @DnDArgument : "msg" ""Error: No Boss core detected""
	show_debug_message(string("Error: No Boss core detected"));

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A4DAE03
	/// @DnDParent : 39386696
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 67D4C9C6
/// @DnDArgument : "var" "turrets_remaining"
/// @DnDArgument : "op" "3"
if(turrets_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 61BAE7B4
	/// @DnDParent : 67D4C9C6
	instance_destroy();
}