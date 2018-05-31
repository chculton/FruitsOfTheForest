if (gamepad_axis_value(0, gp_axislh))
{
	right = true;	
	left = false;
}

if (instance_exists(obj_PhysicsPlayer) && (instance_exists(obj_Player2)) && right == true)
{
	x = (obj_PhysicsPlayer.x + obj_Player2.x)/2 + 700;
	y =  (obj_PhysicsPlayer.x + obj_Player2.x)/2 + 300;
}

if (gamepad_axis_value(0, gp_axislh) <= -0.3)
{
	left = true;	
	right = false
}

if (instance_exists(obj_PhysicsPlayer) && (instance_exists(obj_Player2)) && left == true)
{
	x =  (obj_PhysicsPlayer.x + obj_Player2.x)/2 - 700;
	y =  (obj_PhysicsPlayer.x + obj_Player2.x)/2 - 300;
}

