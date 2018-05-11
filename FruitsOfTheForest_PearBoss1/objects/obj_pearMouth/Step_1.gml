x = obj_PearBoss.x + 380;
y = obj_PearBoss.y + 870;

image_angle = point_direction(x, y, -obj_Player.x, obj_Player.y);


firing_delay = firing_delay - 1;
if (mouse_check_button(mb_left) && firing_delay < 0)
{
	firing_delay = 5;
	with (instance_create_layer(x, y, "Instances", obj_PearAttack1))
	{
		speed = 25;
		direction = other.image_angle;
		image_angle = direction;
	}
}