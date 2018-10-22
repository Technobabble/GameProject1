/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15C09750
/// @DnDArgument : "code" "num_waves = 3;$(13_10)$(13_10)between_wave_delays[0] = 20;$(13_10)between_wave_delays[1] = 30;$(13_10)between_wave_delays[2] = 0;$(13_10)$(13_10)$(13_10)next_wave_delay = 0;$(13_10)current_wave = 0;$(13_10)"
num_waves = 3;

between_wave_delays[0] = 20;
between_wave_delays[1] = 30;
between_wave_delays[2] = 0;


next_wave_delay = 0;
current_wave = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25B2F6A3
alarm_set(0, 30);