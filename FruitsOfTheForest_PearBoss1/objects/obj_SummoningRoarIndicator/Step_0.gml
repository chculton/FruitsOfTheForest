if (timer <= 0) 
{
  summoning_rock = irandom_range(1,2);
  //instance_create_layer(obj_Player2.x, y, "PlayerLayer", obj_SummoningRoarFallingRock);
  if (obj_PhysicsPlayer.x >= obj_Player2.x)
	{
	
	  if (summoning_rock == 1)
	  {
		   instance_create_layer(x, y, "PlayerLayer", obj_SummoningRoarFallingRock);
	  }
	  if (summoning_rock == 2)
	  {
		  instance_create_layer(x, y, "PlayerLayer", obj_SummoningRoarFallingRock2);
	  }
  
	  x = obj_PhysicsPlayer.x;
	  timer = 37;
	} 
	
	if (obj_Player2.x > obj_PhysicsPlayer.x)
		{
	
		  if (summoning_rock == 1)
		  {
			   instance_create_layer(obj_Player2.x, y, "PlayerLayer", obj_SummoningRoarFallingRock);
		  }
		  if (summoning_rock == 2)
		  {
			  instance_create_layer(obj_Player2.x, y, "PlayerLayer", obj_SummoningRoarFallingRock2);
		  }
  
		  x = obj_Player2.x;
		  timer = 37;
	} 
}

if (times_dropped = 3)
{
	instance_destroy();
}

else 
{
  timer -= 1;
}
