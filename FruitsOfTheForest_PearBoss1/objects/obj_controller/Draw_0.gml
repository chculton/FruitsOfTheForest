for (var i = 0; i < 4; i++;)

{
var xx = 1000;
var yy = 32 + (160 * i);

draw_set_font(fnt_debugController);
draw_set_halign(fa_center);
draw_set_color(c_ltgray);
	
if gamepad_is_connected(i)
    {
    draw_text(xx, yy, "Gamepad Slot - " + string(i));
    draw_text(xx, yy + 20, "Gamepad Type - " + string(gamepad_get_description(i)));
    draw_text(xx, yy + 40, "Left H Axis - " + string(gamepad_axis_value(i, gp_axislh)));
    draw_text(xx, yy + 60, "Left V Axis - " + string(gamepad_axis_value(i, gp_axislv)));
    draw_text(xx, yy + 80, "Right H Axis - " + string(gamepad_axis_value(i, gp_axisrh)));
    draw_text(xx, yy + 100, "Right V Axis - " + string(gamepad_axis_value(i, gp_axisrv)));   
    draw_text(xx, yy + 120, "Fire Rate - " + string(gamepad_button_value(i, gp_shoulderrb)));
    }
else
    {
    draw_text(xx, yy, "Gamepad Slot - " + string(i));
    draw_text(xx, yy + 20, "Gamepad not connected" + string(gamepad_get_description(i)));
    }
}