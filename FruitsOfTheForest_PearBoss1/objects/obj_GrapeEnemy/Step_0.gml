if ((x - obj_PhysicsPlayer.x) < sensoryRange && attacking == false && dead == false)
{
	attacking = true;
	sprite_index = spr_GrapeAlert;
}

if (attacking == true && timer <= 0)
{
	instance_create_layer(x, y, "Instances", obj_GrapeBullet);
	timer = 15;
	sprite_index = spr_GrapeAttacking;
	image_index = 1;
}

else
{
	timer--;
}