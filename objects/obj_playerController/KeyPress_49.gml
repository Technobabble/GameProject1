/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6C1DB587
/// @DnDArgument : "var" "current_strikers"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(current_strikers >= 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72488083
	/// @DnDParent : 6C1DB587
	/// @DnDArgument : "var" "current_striker_cooldown[0]"
	/// @DnDArgument : "op" "3"
	if(current_striker_cooldown[0] <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1A29CDC4
		/// @DnDParent : 72488083
		/// @DnDArgument : "objectid" "obj_allied_striker"
		/// @DnDSaveInfo : "objectid" "6f09a8dc-8a3b-4235-b40a-60b2837192f7"
		instance_create_layer(0, 0, "Instances", obj_allied_striker);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41A3A2BA
		/// @DnDParent : 72488083
		/// @DnDArgument : "expr" "striker_cooldown[0]"
		/// @DnDArgument : "var" "current_striker_cooldown[0]"
		current_striker_cooldown[0] = striker_cooldown[0];
	}
}