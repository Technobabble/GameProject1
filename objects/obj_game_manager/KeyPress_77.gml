/// @DnDAction : YoYo Games.Audio.Audio_Get_Master_Volume
/// @DnDVersion : 1
/// @DnDHash : 77CC8A9E
/// @DnDArgument : "var" "current_volume"
/// @DnDArgument : "var_temp" "1"
var current_volume = audio_get_master_gain(0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1FC03B7B
/// @DnDArgument : "var" "current_volume"
if(current_volume == 0)
{
	/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 13FA78F1
	/// @DnDParent : 1FC03B7B
	/// @DnDArgument : "volume" "default_volume"
	audio_set_master_gain(0, default_volume);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 42263EB0
else
{
	/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 252006D1
	/// @DnDParent : 42263EB0
	/// @DnDArgument : "volume" "0"
	audio_set_master_gain(0, 0);
}