/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 638C5987
/// @DnDArgument : "code" "if(keyboard_check(vk_left))$(13_10){$(13_10)	if(keyboard_check(vk_up))$(13_10)	{$(13_10)		//Character moves up and left$(13_10)		movement = Movement.diagUpLeft;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down))$(13_10)	{$(13_10)		//Character moves down and left$(13_10)		movement = Movement.diagDownLeft;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character left		$(13_10)		movement = Movement.left;$(13_10)	}$(13_10)}$(13_10)//Right Press checks for diagonals.$(13_10)else if(keyboard_check(vk_right))$(13_10){$(13_10)	if(keyboard_check(vk_up))$(13_10)	{$(13_10)		//Character moves up and right$(13_10)		movement = Movement.diagUpRight;$(13_10)		$(13_10)	}$(13_10)	else if(keyboard_check(vk_down))$(13_10)	{$(13_10)		//Character moves down and right$(13_10)		movement = Movement.diagDownRight;$(13_10)		$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		//Character moves right$(13_10)		movement = Movement.right;$(13_10)		$(13_10)	}$(13_10)}$(13_10)else if(keyboard_check(vk_up))$(13_10){$(13_10)	//Character moves up$(13_10)		movement = Movement.up;$(13_10)	$(13_10)}$(13_10)else if(keyboard_check(vk_down))$(13_10){$(13_10)	//Character moves down$(13_10)		movement = Movement.down;$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//Character does not move$(13_10)	movement = Movement.idle;$(13_10)}$(13_10)$(13_10)$(13_10)//	Checks the movement state and sets the character speed accordingly$(13_10)//	Do NOT change this block of code$(13_10)if(movement != Movement.idle)$(13_10){$(13_10)		//Ship is moving$(13_10)		//hspeed = 4;$(13_10)		//local_vspeed = 4;$(13_10)}$(13_10)else{$(13_10)	//hspeed = 0;$(13_10)	//local_vspeed = 0;	$(13_10)}$(13_10)$(13_10)$(13_10)//	Movement switch statement. Changes sprite and direction based on the movement state.$(13_10)switch (movement)$(13_10){$(13_10)   case Movement.left:$(13_10)		//direction = 180;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		local_vspeed = 0;$(13_10)		break;$(13_10)	case Movement.diagUpLeft:$(13_10)		//direction = 135;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		local_vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.up:$(13_10)		//direction = 90;$(13_10)		//sprite_index = spr_ChainUp;$(13_10)		hspeed = 0;$(13_10)		local_vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.diagUpRight:$(13_10)		//direction = 45;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		local_vspeed = -speed_scale;$(13_10)		break;$(13_10)	case Movement.right:$(13_10)		//direction = 0;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		local_vspeed = 0;$(13_10)		break;$(13_10)	case Movement.diagDownRight:$(13_10)		//direction = 315;$(13_10)		//sprite_index = spr_ChainRight;$(13_10)		hspeed = speed_scale;$(13_10)		local_vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.down:$(13_10)		//direction = 270;$(13_10)		//sprite_index = spr_ChainDown;$(13_10)		hspeed = 0;$(13_10)		local_vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.diagDownLeft:$(13_10)		//direction = 225;$(13_10)		//sprite_index = spr_ChainLeft;$(13_10)		hspeed = -speed_scale;$(13_10)		local_vspeed = speed_scale;$(13_10)		break;$(13_10)	case Movement.idle:		$(13_10)		hspeed = 0;$(13_10)		local_vspeed = 0;$(13_10)		$(13_10)		break;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if ((local_vspeed + obj_roomManager.lvl_vspeed_actual)>0 and y> room_height-64) $(13_10){$(13_10)	vspeed = 0;$(13_10)	obj_roomManager.bg_vspeed_offset = 0;$(13_10)	obj_roomManager.lvl_vspeed_offset = 0;$(13_10)}$(13_10)else if(y < (room_height/2)){$(13_10)	vspeed = clamp(local_vspeed,0, 100);$(13_10)	obj_roomManager.bg_vspeed_offset = 1;$(13_10)	obj_roomManager.lvl_vspeed_offset = 2;$(13_10)}$(13_10)else{$(13_10)	vspeed = local_vspeed; //+ layer_get_vspeed("Background");$(13_10)	obj_roomManager.bg_vspeed_offset = 0;$(13_10)	obj_roomManager.lvl_vspeed_offset = 0;$(13_10)}$(13_10)$(13_10)hspeed = hspeed* obj_roomManager.time_scale;$(13_10)vspeed = vspeed* obj_roomManager.time_scale;"
if(keyboard_check(vk_left))
{
	if(keyboard_check(vk_up))
	{
		//Character moves up and left
		movement = Movement.diagUpLeft;
		
	}
	else if(keyboard_check(vk_down))
	{
		//Character moves down and left
		movement = Movement.diagDownLeft;
		
	}
	else
	{
		//Character left		
		movement = Movement.left;
	}
}
//Right Press checks for diagonals.
else if(keyboard_check(vk_right))
{
	if(keyboard_check(vk_up))
	{
		//Character moves up and right
		movement = Movement.diagUpRight;
		
	}
	else if(keyboard_check(vk_down))
	{
		//Character moves down and right
		movement = Movement.diagDownRight;
		
	}
	else
	{
		//Character moves right
		movement = Movement.right;
		
	}
}
else if(keyboard_check(vk_up))
{
	//Character moves up
		movement = Movement.up;
	
}
else if(keyboard_check(vk_down))
{
	//Character moves down
		movement = Movement.down;
	
}
else
{
	//Character does not move
	movement = Movement.idle;
}


//	Checks the movement state and sets the character speed accordingly
//	Do NOT change this block of code
if(movement != Movement.idle)
{
		//Ship is moving
		//hspeed = 4;
		//local_vspeed = 4;
}
else{
	//hspeed = 0;
	//local_vspeed = 0;	
}


//	Movement switch statement. Changes sprite and direction based on the movement state.
switch (movement)
{
   case Movement.left:
		//direction = 180;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		local_vspeed = 0;
		break;
	case Movement.diagUpLeft:
		//direction = 135;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		local_vspeed = -speed_scale;
		break;
	case Movement.up:
		//direction = 90;
		//sprite_index = spr_ChainUp;
		hspeed = 0;
		local_vspeed = -speed_scale;
		break;
	case Movement.diagUpRight:
		//direction = 45;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		local_vspeed = -speed_scale;
		break;
	case Movement.right:
		//direction = 0;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		local_vspeed = 0;
		break;
	case Movement.diagDownRight:
		//direction = 315;
		//sprite_index = spr_ChainRight;
		hspeed = speed_scale;
		local_vspeed = speed_scale;
		break;
	case Movement.down:
		//direction = 270;
		//sprite_index = spr_ChainDown;
		hspeed = 0;
		local_vspeed = speed_scale;
		break;
	case Movement.diagDownLeft:
		//direction = 225;
		//sprite_index = spr_ChainLeft;
		hspeed = -speed_scale;
		local_vspeed = speed_scale;
		break;
	case Movement.idle:		
		hspeed = 0;
		local_vspeed = 0;
		
		break;

}



if ((local_vspeed + obj_roomManager.lvl_vspeed_actual)>0 and y> room_height-64) 
{
	vspeed = 0;
	obj_roomManager.bg_vspeed_offset = 0;
	obj_roomManager.lvl_vspeed_offset = 0;
}
else if(y < (room_height/2)){
	vspeed = clamp(local_vspeed,0, 100);
	obj_roomManager.bg_vspeed_offset = 1;
	obj_roomManager.lvl_vspeed_offset = 2;
}
else{
	vspeed = local_vspeed; //+ layer_get_vspeed("Background");
	obj_roomManager.bg_vspeed_offset = 0;
	obj_roomManager.lvl_vspeed_offset = 0;
}

hspeed = hspeed* obj_roomManager.time_scale;
vspeed = vspeed* obj_roomManager.time_scale;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 11B8EE50
/// @DnDArgument : "var" "invincibility_remaining"
/// @DnDArgument : "op" "2"
if(invincibility_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0169FA76
	/// @DnDParent : 11B8EE50
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "invincibility_remaining"
	invincibility_remaining += -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5944DC09
else
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 6AAE0DE8
	/// @DnDParent : 5944DC09
	image_alpha = 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CF6EE9C
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "current_refire_wait"
current_refire_wait += -1;