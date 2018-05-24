if (attacking = false)
{
	if ((x - obj_PhysicsPlayer.x) < sensoryRange)
	{
		inRange = true;
	}
}

if (inRange == true && attacking == false)
{
	instance_create_layer(x - 100, y, "PlayerLayer", obj_GasCloud);
	sprite_index = spr_DurianAttack;
	attacking = true;
}