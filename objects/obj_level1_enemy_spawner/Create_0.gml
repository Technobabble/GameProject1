/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15C09750
/// @DnDArgument : "code" "num_waves = 7;$(13_10)$(13_10)between_wave_delays[0] = 10;$(13_10)between_wave_delays[1] = 15;$(13_10)between_wave_delays[2] = 15;$(13_10)between_wave_delays[3] = 3;$(13_10)between_wave_delays[4] = 12;$(13_10)between_wave_delays[5] = 25;$(13_10)between_wave_delays[6] = 0;$(13_10)$(13_10)$(13_10)next_wave_delay = 0;$(13_10)current_wave = 0;$(13_10)"
num_waves = 7;

between_wave_delays[0] = 10;
between_wave_delays[1] = 15;
between_wave_delays[2] = 15;
between_wave_delays[3] = 3;
between_wave_delays[4] = 12;
between_wave_delays[5] = 25;
between_wave_delays[6] = 0;


next_wave_delay = 0;
current_wave = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 25B2F6A3
alarm_set(0, 30);