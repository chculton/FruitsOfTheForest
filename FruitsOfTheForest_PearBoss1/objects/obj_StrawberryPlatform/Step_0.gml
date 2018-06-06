if(collision_rectangle(x, y, 128, 50, obj_PhysicsPlayer, false, true) && completed == false)
{
	if (gamepad_button_check(0, gp_face2))
	{
		instance_create_layer(x, y, "PlayerLayer" ,obj_StrawberryRope)
		completed = true;
	}
}