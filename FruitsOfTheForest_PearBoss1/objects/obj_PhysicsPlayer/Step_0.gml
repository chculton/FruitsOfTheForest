phy_rotation = 0;
phy_fixed_rotation = true;

if keyboard_check(right)
{
	//physics_apply_force(x, y, spd, 0);
	phy_position_x += spd;
}

if keyboard_check(left)
{
	//physics_apply_force(x, y, -spd, 0);
	phy_position_x -= spd;
}

if (keyboard_check(jump) && (jumping = false))
{
	physics_apply_impulse(x, y, 0, -jmp);
	jumping = true;
}

if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}