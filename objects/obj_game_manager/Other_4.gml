/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 69B01BDB
/// @DnDArgument : "obj" "obj_playerController"
/// @DnDSaveInfo : "obj" "ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0"
var l69B01BDB_0 = false;
l69B01BDB_0 = instance_exists(obj_playerController);
if(l69B01BDB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 424F15B2
	/// @DnDParent : 69B01BDB
	/// @DnDArgument : "expr" "strikers_unlocked"
	/// @DnDArgument : "var" "obj_playerController.current_strikers"
	obj_playerController.current_strikers = strikers_unlocked;
}