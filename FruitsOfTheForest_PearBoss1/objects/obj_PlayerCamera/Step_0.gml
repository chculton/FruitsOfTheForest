if (gamepad_axis_value(0, gp_axislh))
{
	right = true;	
	left = false;
}

if (instance_exists(obj_PhysicsPlayer) && right == true)
{
	x = obj_PhysicsPlayer.x + 700;
	y = obj_PhysicsPlayer.y - 300;
}

if (gamepad_axis_value(0, gp_axislh) <= -0.3)
{
	left = true;	
	right = false
}

if (instance_exists(obj_PhysicsPlayer) && left == true)
{
	x = obj_PhysicsPlayer.x - 700;
	y = obj_PhysicsPlayer.y - 300;
}