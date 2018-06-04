if (gamepad_button_check_pressed(0, gp_face4))
{
	with (obj_Player2)
				obj_Player2.phy_position_x = obj_Teleporter.phy_position_x;
				obj_Player2.phy_position_y = obj_Teleporter.phy_position_y;	
	with (obj_PhysicsPlayer)
				obj_PhysicsPlayer.phy_position_x = obj_Teleporter.phy_position_x;
				obj_PhysicsPlayer.phy_position_y = obj_Teleporter.phy_position_y;	
				
}