/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15C09750
/// @DnDArgument : "code" "num_waves = 7;$(13_10)$(13_10)between_wave_delays[0] = 20;$(13_10)between_wave_delays[1] = 20;$(13_10)between_wave_delays[2] = 20;$(13_10)between_wave_delays[3] = 5;$(13_10)between_wave_delays[4] = 12;$(13_10)between_wave_delays[5] = 30;$(13_10)between_wave_delays[6] = 0;$(13_10)$(13_10)$(13_10)next_wave_delay = 0;$(13_10)current_wave = 0;$(13_10)"
num_waves = 7;

between_wave_delays[0] = 20;
between_wave_delays[1] = 20;
between_wave_delays[2] = 20;
between_wave_delays[3] = 5;
between_wave_delays[4] = 12;
between_wave_delays[5] = 30;
between_wave_delays[6] = 0;


next_wave_delay = 0;
current_wave = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25B2F6A3
alarm_set(0, 30);