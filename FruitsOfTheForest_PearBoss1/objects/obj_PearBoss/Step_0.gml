if (obj_PhysicsPlayer.x >= obj_Player2.x)
{
	AimingPlayer = 1;
}

if (obj_PhysicsPlayer.x >= obj_Player2.x)
{
	AimingPlayer = 2;
}

if (AimingPlayer = 1)


if (instance_exists(obj_PhysicsPlayer))
{
	if (AimingPlayer = 1)
	{
		view_object[0] = obj_PhysicsPlayer;
	}
	if (AimingPlayer = 2)
	{
		view_object[0] = obj_Player2;
	}
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
		  if (AimingPlayer = 1)
		{
		  instance_create_layer(obj_PhysicsPlayer.x, obj_PhysicsPlayer.y - 900, "PlayerLayer", obj_SummoningRoarIndicator);
		  audio_play_sound(sfx_Roar, 3, false);
		}
		
		 if (AimingPlayer = 2)
		{
		  instance_create_layer(obj_PhysicsPlayer.x, obj_PhysicsPlayer.y - 900, "PlayerLayer", obj_SummoningRoarIndicator);
		  audio_play_sound(sfx_Roar, 3, false);
		}
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


	if (global.PearHealth <= 0)
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

}

if ((SecondPhase == true) && (obj_PhysicsPlayer.x > 700) && (obj_Player2.x > 700) && SecondPhaseBossSpawn = false)
{
	visible = false;
	audio_play_sound(sfx_DefeatedFirstStage, 3, false);
	instance_create_layer(obj_PearBoss.x, obj_PearBoss.y, "PlayerLayer", obj_PearBossPhase2);
	SecondPhaseBossSpawn = true;
	global.PearHealth = 300;
	instance_destroy();
	//sprite_index = spr_PearSecondPhase;
}

