phy_rotation = 0;
phy_fixed_rotation = true;

if keyboard_check(right)
{
	phy_position_x += spd;
}

if keyboard_check(left)
{
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