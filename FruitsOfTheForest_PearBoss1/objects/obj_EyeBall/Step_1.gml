x = 1545;
y = 600;
if (obj_PhysicsPlayer.x > obj_Player2.x)
{
	image_angle = point_direction(x, y, obj_PhysicsPlayer.x, obj_PhysicsPlayer.y);
}

if (obj_PhysicsPlayer.x < obj_Player2.x)
{
	image_angle = point_direction(x, y, obj_Player2.x, obj_Player2.y);
}
