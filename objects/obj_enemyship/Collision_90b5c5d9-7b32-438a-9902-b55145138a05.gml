/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6800B3C9
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 30A44C7E
/// @DnDArgument : "health" "-other.damage"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-other.damage);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7529F91C
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1380BD07
/// @DnDArgument : "steps" "room_speed*0.1"
alarm_set(0, room_speed*0.1);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 2AB72B85
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 021F84D3
	/// @DnDParent : 2AB72B85
	instance_destroy();

	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 08EBBBB7
	/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
	/// @DnDParent : 2AB72B85
	/// @DnDArgument : "score" "5"
	/// @DnDArgument : "score_relative" "1"
	with(obj_playerController) {
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(5);
	}
}