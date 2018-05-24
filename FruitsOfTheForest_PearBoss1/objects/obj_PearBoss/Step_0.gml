
if (instance_exists(obj_PhysicsPlayer))
{
	 view_object[0] = obj_PhysicsPlayer;
}


if (FirstPhase == true)
{
	
	if (timer <= 0) 
	{
	  RandomAttackCount = irandom_range(1, 3)
  
	  if (RandomAttackCount == 1 && previous_Attack != 1) //Chooses Acid Spit Attack
	  {
		  instance_destroy(obj_PearVineLashVines); //Destroys Previous Attack
		  instance_destroy(obj_SummoningRoarIndicator); //Destroys Previous Attack
	  
		  sprite_index = spr_PearAcidSpit;
		  image_index = 1;
		  previous_Attack = 1;
	  
		  instance_create_layer(obj_PearBoss.x, obj_PearBoss.y, "PlayerLayer", obj_PearAcidSpitBubble)
	  
	  }
  
	  if (RandomAttackCount == 2 && previous_Attack != 2) //Chooses Vine Lash Attack
	  {
		  instance_destroy(obj_PearAcidSpitBubble); //Destroys Previous Attack
		  instance_destroy(obj_SummoningRoarIndicator); //Destroys Previous Attack
	  
		  sprite_index = spr_PearVineLashBody;
		  image_index = 1;
		  previous_Attack = 2;
	  
		  instance_create_layer(obj_PearBoss.x, obj_PearBoss.y, "PlayerLayer", obj_PearVineLashVines)
	  }
  
	  if (RandomAttackCount == 3 && previous_Attack != 3) //Chooses SummoningRoar Attack
	  {
		  instance_destroy(obj_PearAcidSpitBubble);  //Destroys Previous Attack
		  instance_destroy(obj_PearVineLashVines); //Destroys Previous Attack
	  
		  sprite_index = spr_PearSummoningRoar;
		  image_index = 1;
		  previous_Attack = 3;
	  
		  instance_create_layer(obj_PhysicsPlayer.x, obj_PhysicsPlayer.y - 900, "PlayerLayer", obj_SummoningRoarIndicator);
	  }
  
	  if (previous_Attack = 1)
	  {
		  timer = 300;
	  }
  
	  if (previous_Attack = 2)
	  {
		  timer = 65;
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


	if (pear_health <= 0)
	{
		sprite_index = spr_PearFirstPhaseDeath;
		FirstPhase = false;
		SecondPhase = true;
		timer = 0;
	
		instance_destroy(obj_EyeBall);
		instance_destroy(obj_PearAcidSpitBubble);  //Destroys Previous Attack
		instance_destroy(obj_PearVineLashVines); //Destroys Previous Attack
		instance_destroy(obj_SummoningRoarIndicator); //Destroys Previous Attack
	}
	//TEMPORARY (LIFE LOSS)

	if (keyboard_check(LooseLife))
	{
		pear_health -= 1;
	}

}

if ((SecondPhase == true) && (keyboard_check(SecondPhaseKey)) && SecondPhaseBossSpawn = false)
{
	visible = false;
	instance_create_layer(obj_PearBoss.x, obj_PearBoss.y, "PlayerLayer", obj_PearBossPhase2);
	SecondPhaseBossSpawn = true;
	instance_destroy();
	//sprite_index = spr_PearSecondPhase;
}

