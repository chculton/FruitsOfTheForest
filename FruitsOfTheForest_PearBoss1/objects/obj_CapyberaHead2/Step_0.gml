vx = camera_get_view_x(view_camera[0]);
x = vx + 1800;

if (obj_Player2.phy_position_y > 1080 && moved1 == false)
{
	y += 1080;
	moved1 = true;
}

if (obj_Player2.phy_position_y > 2160 && moved1 == true && moved2 == false)
{
	y += 1080;
	moved2 = true;
}

if (obj_Player2.phy_position_y > 3240 && moved1 == true && moved2 == true && moved3 == false)
{
	y += 1080;
	moved2 = true;
}