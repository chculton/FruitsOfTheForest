phy_rotation = 0;
phy_fixed_rotation = true;

if (gamepad_button_check_pressed(0, gp_face1))
{
	jump = true;
}
if (gamepad_axis_value(0, gp_axislh))
{
	right = true;	
}
if (gamepad_axis_value(0, gp_axislh) <= -0.3)
{
	left = true;	
}


if (right == true && (jumping = false))
{
	phy_position_x += spd;
}

if (left == true && (jumping = false))
{
	phy_position_x -= spd;
}

if (left == true && (jumping = true))
{
	phy_position_x -= spd * 0.8;
}

if (right == true && (jumping = true))
{
	phy_position_x += spd * 0.8;
}



if (jump == true && (jump_cooldown < 1))
{
	physics_apply_impulse(x, y, 0, -jmp);
	jump_cooldown++;
	jumping = true;
}

/*if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}*/

if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_LargePlatform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide2)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide3)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide4)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if (Player1Health <= 0)
{
	instance_destroy();
}

jump = false;
left = false;
right = false;