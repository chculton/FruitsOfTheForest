if (timer <= 0) 
{
  instance_create_layer(x, y, "Instances_1", obj_SummoningRoarFallingRock);
  x = obj_PhysicsPlayer.x;
  timer = 37;
} 

if (times_dropped = 3)
{
	instance_destroy();
}

else 
{
  timer -= 1;
}

//