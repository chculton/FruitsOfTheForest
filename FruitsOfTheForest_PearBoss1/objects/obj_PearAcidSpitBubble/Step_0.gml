if (timer == 70)
{
	visible = true;
}


if (timer <= 0) 
{
  visible = false;
  instance_create_layer(x - 150, y - 20, "PlayerLayer", obj_PearAcidSpitProjectile);
  
  timer = 100;
} 

else 
{
  timer -= 1;
}