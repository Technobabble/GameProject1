/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 3A93EFAE

__dnd_score = real(0);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 37D9E87C
/// @DnDArgument : "obj" "obj_game_manager"
/// @DnDSaveInfo : "obj" "e75e8d62-cc45-4657-9137-d8d6260fc4a4"
var l37D9E87C_0 = false;
l37D9E87C_0 = instance_exists(obj_game_manager);
if(l37D9E87C_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 34350734
	/// @DnDParent : 37D9E87C
	/// @DnDArgument : "score" "obj_game_manager.player_score"
	
	__dnd_score = real(obj_game_manager.player_score);
}