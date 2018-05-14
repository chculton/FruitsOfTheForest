if (timer <= 0) 
{
  RandomAttackCount = irandom_range(1, 3)
  
  if (RandomAttackCount == 1 && previous_Attack != 1) //Chooses Acid Spit Attack
  {
	  sprite_index = spr_PearAcidSpit;
	  image_index = 1;
	  previous_Attack = 1;
	  
	  instance_create_layer(obj_PearBoss.x, obj_PearBoss.y, "Instances_1", obj_PearAcidSpitBubble)
	  
  }
  
  if (RandomAttackCount == 2 && previous_Attack != 2) //Chooses Vine Lash Attack
  {
	  instance_destroy(obj_PearAcidSpitBubble); //Destroys Previous Attack
	  
	  sprite_index = spr_PearVineLash;
	  image_index = 1;
	  previous_Attack = 2;
  }
  
  if (RandomAttackCount == 3 && previous_Attack != 3) //Chooses SummoningRoar Attack
  {
	  instance_destroy(obj_PearAcidSpitBubble);  //Destroys Previous Attack
	  
	  sprite_index = spr_PearSummoningRoar;
	  image_index = 1;
	  previous_Attack = 3;
  }
  
  if (previous_Attack = 1)
  {
	  timer = 300;
  }
  
  if (previous_Attack = 2)
  {
	  timer = 70;
  }
  
  if (previous_Attack = 3)
  {
	  timer = 120;
  }
} 

else 
{
  timer -= 1;
}