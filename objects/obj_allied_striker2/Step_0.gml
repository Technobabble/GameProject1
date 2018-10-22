/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 50C496F6
/// @DnDArgument : "angle" "direction-90"
image_angle = direction-90;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5ADFC63B
/// @DnDArgument : "var" "laser_active"
/// @DnDArgument : "value" "true"
if(laser_active == true)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 64670CDF
	/// @DnDParent : 5ADFC63B
	/// @DnDArgument : "code" "in_play_area = false$(13_10)if(x > 0 & x < room_width)$(13_10){$(13_10)	if(y > 0 & y < room_height)$(13_10)	{$(13_10)		in_play_area = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(in_play_area){$(13_10)	if(current_laser !=  pointer_null){$(13_10)		instance_destroy(current_laser, true);$(13_10)	}$(13_10)	current_laser = instance_create_layer(x,y,"Projectiles", current_projectile);	$(13_10)}$(13_10)$(13_10)/// @description Execute Code$(13_10)with(current_laser)$(13_10)	{$(13_10)		current_target = instance_nearest(x,y,template_basic_target);$(13_10)		if(instance_exists(current_target))$(13_10)		{$(13_10)		transform_parent = other;$(13_10)		direction = point_direction(x,y,current_target.x,current_target.y);$(13_10)		image_angle = direction-90;$(13_10)		image_yscale =point_distance(x,y,current_target.x,current_target.y)/64;$(13_10)		other.laser_scale = image_yscale;$(13_10)		x = other.x;$(13_10)		y = other.y;$(13_10)		}$(13_10)		else{			$(13_10)		image_yscale =0;$(13_10)		}$(13_10)$(13_10)	}"
	in_play_area = false
	if(x > 0 & x < room_width)
	{
		if(y > 0 & y < room_height)
		{
			in_play_area = true;
		}
	}
	
	if(in_play_area){
		if(current_laser !=  pointer_null){
			instance_destroy(current_laser, true);
		}
		current_laser = instance_create_layer(x,y,"Projectiles", current_projectile);	
	}
	
	/// @description Execute Code
	with(current_laser)
		{
			current_target = instance_nearest(x,y,template_basic_target);
			if(instance_exists(current_target))
			{
			transform_parent = other;
			direction = point_direction(x,y,current_target.x,current_target.y);
			image_angle = direction-90;
			image_yscale =point_distance(x,y,current_target.x,current_target.y)/64;
			other.laser_scale = image_yscale;
			x = other.x;
			y = other.y;
			}
			else{			
			image_yscale =0;
			}
	
		}
}