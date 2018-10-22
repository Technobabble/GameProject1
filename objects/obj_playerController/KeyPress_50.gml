/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38E491E8
/// @DnDArgument : "var" "current_strikers"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(current_strikers >= 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B1212F8
	/// @DnDParent : 38E491E8
	/// @DnDArgument : "var" "current_striker_cooldown[1]"
	/// @DnDArgument : "op" "3"
	if(current_striker_cooldown[1] <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3248A630
		/// @DnDParent : 7B1212F8
		/// @DnDArgument : "objectid" "obj_allied_striker2"
		/// @DnDSaveInfo : "objectid" "310558d6-cb1e-49ab-a5c9-ea4b8a63fcee"
		instance_create_layer(0, 0, "Instances", obj_allied_striker2);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32191FF2
		/// @DnDParent : 7B1212F8
		/// @DnDArgument : "expr" "striker_cooldown[1]"
		/// @DnDArgument : "var" "current_striker_cooldown[1]"
		current_striker_cooldown[1] = striker_cooldown[1];
	}
}