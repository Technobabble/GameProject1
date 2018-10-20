/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 12515D7C
/// @DnDArgument : "obj" "obj_wobbler"
/// @DnDSaveInfo : "obj" "e6dc6209-029e-4826-9805-fb7fc8dffe20"
var l12515D7C_0 = false;
l12515D7C_0 = instance_exists(obj_wobbler);
if(l12515D7C_0)
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 681D8F7D
	/// @DnDParent : 12515D7C
	/// @DnDArgument : "obj" "obj_playership"
	/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
	var l681D8F7D_0 = false;
	l681D8F7D_0 = instance_exists(obj_playership);
	if(l681D8F7D_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4195956C
		/// @DnDParent : 681D8F7D
		/// @DnDArgument : "x" "obj_wobbler.x + dcos(obj_wobbler.target_angle) * 100"
		/// @DnDArgument : "y" "obj_wobbler.y + dsin(obj_wobbler.target_angle)* 100"
		x = obj_wobbler.x + dcos(obj_wobbler.target_angle) * 100;
		y = obj_wobbler.y + dsin(obj_wobbler.target_angle)* 100;
	}
}