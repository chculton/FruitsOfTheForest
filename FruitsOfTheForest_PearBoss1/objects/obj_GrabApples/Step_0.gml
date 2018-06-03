if ((obj_PhysicsPlayer.x > obj_GrabApplePlatfom.x - 64) && (obj_PhysicsPlayer.x < obj_GrabApplePlatfom.x + 64))
{
	if (gamepad_button_check_pressed(0, gp_face2))
	{
		with (obj_PhysicsPlayer)
			physics_;
		
	}
}