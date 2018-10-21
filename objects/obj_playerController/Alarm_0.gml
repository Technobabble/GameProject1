/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 4379197F
/// @DnDArgument : "op" "4"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives >= 0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43139738
	/// @DnDApplyTo : 81c1bee2-64a8-4cf8-8f76-9802e07398a5
	/// @DnDParent : 4379197F
	/// @DnDArgument : "objind" "obj_playership"
	/// @DnDSaveInfo : "objind" "a68b5698-7431-41e2-8980-17f9768a53c1"
	with(obj_blastwave) instance_change(obj_playership, true);

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 15A55E4C
	/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
	/// @DnDParent : 4379197F
	with(obj_playership) {
	image_xscale = 1;
	image_yscale = 1;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 611FCF9D
	/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
	/// @DnDParent : 4379197F
	/// @DnDArgument : "expr" "room_speed*2"
	/// @DnDArgument : "var" "invincibility_remaining"
	with(obj_playership) {
	invincibility_remaining = room_speed*2;
	
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6A04752F
	/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
	/// @DnDParent : 4379197F
	/// @DnDArgument : "steps" "room_speed*0.1"
	with(obj_playership) {
	alarm_set(0, room_speed*0.1);
	
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 4C9F71C9
	/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
	/// @DnDParent : 4379197F
	with(obj_playership) {
	x = xstart;
	y = ystart;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 33ED84BE
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3170580B
	/// @DnDApplyTo : 81c1bee2-64a8-4cf8-8f76-9802e07398a5
	/// @DnDParent : 33ED84BE
	with(obj_blastwave) instance_destroy();
}