/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 42D66FC4
/// @DnDArgument : "y" "225"
/// @DnDArgument : "caption" ""Wobbler pos: ""
/// @DnDArgument : "text" ""(" +string(x) +", " + string(y) + ")""
draw_text_transformed(0, 225, string("Wobbler pos: ") + string("(" +string(x) +", " + string(y) + ")"), 1, 1, 0);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 62FF06D9
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l62FF06D9_0 = false;
l62FF06D9_0 = instance_exists(obj_playership);
if(l62FF06D9_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1E495E79
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "250"
	/// @DnDArgument : "caption" ""Target Distance: ""
	/// @DnDArgument : "text" "target_distance"
	draw_text_transformed(0, 250, string("Target Distance: ") + string(target_distance), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 10FF0427
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "275"
	/// @DnDArgument : "caption" ""Target Angle: ""
	/// @DnDArgument : "text" "target_angle"
	draw_text_transformed(0, 275, string("Target Angle: ") + string(target_angle), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 101E6505
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "300"
	/// @DnDArgument : "caption" ""Wobble Angle: ""
	/// @DnDArgument : "text" "wobble_angle"
	draw_text_transformed(0, 300, string("Wobble Angle: ") + string(wobble_angle), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 160A007E
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "325"
	/// @DnDArgument : "caption" ""Wobble Offset: ""
	/// @DnDArgument : "text" "wobble_angle_offset"
	draw_text_transformed(0, 325, string("Wobble Offset: ") + string(wobble_angle_offset), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 193BC836
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "350"
	/// @DnDArgument : "caption" ""dcos(wobble_angle_offset): ""
	/// @DnDArgument : "text" "dcos(wobble_angle_offset)"
	draw_text_transformed(0, 350, string("dcos(wobble_angle_offset): ") + string(dcos(wobble_angle_offset)), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1FA73937
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "375"
	/// @DnDArgument : "caption" ""dsin(wobble_angle_offset): ""
	/// @DnDArgument : "text" "dsin(wobble_angle_offset)"
	draw_text_transformed(0, 375, string("dsin(wobble_angle_offset): ") + string(dsin(wobble_angle_offset)), 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 362E6C42
	/// @DnDParent : 62FF06D9
	/// @DnDArgument : "y" "400"
	/// @DnDArgument : "caption" ""Wobble Scale: ""
	/// @DnDArgument : "text" "wobble_scale"
	draw_text_transformed(0, 400, string("Wobble Scale: ") + string(wobble_scale), 1, 1, 0);
}