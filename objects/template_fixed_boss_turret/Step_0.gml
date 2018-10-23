/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 71194BC5
/// @DnDArgument : "x" "transform_parent.x + xOffset"
/// @DnDArgument : "y" "transform_parent.y + yOffset"
x = transform_parent.x + xOffset;
y = transform_parent.y + yOffset;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 563C51F0
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l563C51F0_0 = false;
l563C51F0_0 = instance_exists(obj_playership);
if(l563C51F0_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 59221145
	/// @DnDParent : 563C51F0
	/// @DnDArgument : "direction" "point_direction(x,y,obj_playership.x, obj_playership.y) "
	direction = point_direction(x,y,obj_playership.x, obj_playership.y) ;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CE371BB
	/// @DnDParent : 563C51F0
	/// @DnDArgument : "var" "current_refire_wait"
	/// @DnDArgument : "op" "3"
	if(current_refire_wait <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6E81FC93
		/// @DnDParent : 1CE371BB
		/// @DnDArgument : "code" "new_projectile = instance_create_layer(x,y,"Projectiles", current_projectile);$(13_10)with(new_projectile)$(13_10){$(13_10)	direction = other.direction;$(13_10)}$(13_10)current_refire_wait = refire_delay;"
		new_projectile = instance_create_layer(x,y,"Projectiles", current_projectile);
		with(new_projectile)
		{
			direction = other.direction;
		}
		current_refire_wait = refire_delay;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1B468B3A
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "current_refire_wait"
current_refire_wait += -1;