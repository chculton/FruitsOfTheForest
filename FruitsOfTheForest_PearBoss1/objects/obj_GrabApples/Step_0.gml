if ((obj_PhysicsPlayer.x > obj_GrabApplePlatfom.x - 64) && (obj_PhysicsPlayer.x < obj_GrabApplePlatfom.x + 64))
{
	if (gamepad_button_check_pressed(0, gp_face2))
	{
		with (obj_PhysicsPlayer)
			obj_PhysicsPlayer.x = obj_GrabApplePlatfom2.x;
			obj_PhysicsPlayer.y = obj_GrabApplePlatfom2.y;
	
		
	}
}