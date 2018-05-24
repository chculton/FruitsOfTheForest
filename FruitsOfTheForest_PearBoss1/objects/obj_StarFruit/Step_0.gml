if (moving_right == true)
{
    phy_position_x += spd;
	right_timer++;
}

if (moving_left == true)
{
	phy_position_x -= spd;
	left_timer++;
}

if (right_timer >= 100)
{
	moving_right = false;
	moving_left = true;
	right_timer = 0;
}

if (left_timer >= 100)
{
	moving_right = true;
	moving_left = false;
	left_timer = 0;
}