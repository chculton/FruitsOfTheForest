if keyboard_check(right)
{
	physics_apply_force(x, y, 500, 0);
}

if keyboard_check(left)
{
	physics_apply_force(x, y, -500, 0);
}

if keyboard_check(jmp)
{
	physics_apply_force(x, y, 0, -jmp);
}