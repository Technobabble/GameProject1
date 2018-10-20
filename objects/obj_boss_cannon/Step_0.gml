/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2DE2461E
/// @DnDArgument : "x" "transform_parent.x + xOffset"
/// @DnDArgument : "y" "transform_parent.y + yOffset"
x = transform_parent.x + xOffset;
y = transform_parent.y + yOffset;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 72988133
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l72988133_0 = false;
l72988133_0 = instance_exists(obj_playership);
if(l72988133_0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 01D0E59D
	/// @DnDParent : 72988133
	/// @DnDArgument : "angle" "point_direction(x,y,obj_playership.x, obj_playership.y) - 90"
	image_angle = point_direction(x,y,obj_playership.x, obj_playership.y) - 90;
}