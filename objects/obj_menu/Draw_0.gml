/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38F4958F
/// @DnDArgument : "code" "$(13_10)var i = 0;$(13_10)repeat(buttons) {$(13_10)	$(13_10)	draw_set_font(font_main);$(13_10)	draw_set_halign(fa_center);$(13_10)	draw_set_color(c_ltgray);$(13_10)	$(13_10)	if (menu_index == i) draw_set_color(c_red);$(13_10)	$(13_10)	draw_text(menu_x, menu_y + button_h * i, button[i]);$(13_10)	i++;$(13_10)}$(13_10)"

var i = 0;
repeat(buttons) {
	
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	draw_text(menu_x, menu_y + button_h * i, button[i]);
	i++;
}