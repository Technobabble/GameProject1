/// @DnDAction : YoYo Games.Rooms.If_Last_Room
/// @DnDVersion : 1
/// @DnDHash : 220BAEDC
/// @DnDArgument : "not" "1"
if(room != room_last)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F78CE9E
	/// @DnDParent : 220BAEDC
	/// @DnDArgument : "expr" "obj_playerController.player_score"
	/// @DnDArgument : "var" "obj_game_manager.player_score"
	obj_game_manager.player_score = obj_playerController.player_score;

	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 500A7DB7
	/// @DnDParent : 220BAEDC
	room_goto_next();
}