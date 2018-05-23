/*obj_Blender.x = mouse_x;
obj_Blender.y = mouse_y;*/

phy_position_x = mouse_x;
phy_position_y = mouse_y;

firstRope.phy_position_x = mouse_x;
firstRope.phy_position_y = mouse_y;

/*if (keyboard_check(right) && (jumping = true))
{
	phy_position_x += spd * 0.8;
}



if (keyboard_check_pressed(jump) && (jump_cooldown < 1))
{
	physics_apply_impulse(x, y, 0, -jmp);
	jump_cooldown++;
	jumping = true;
}

/*if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}*/