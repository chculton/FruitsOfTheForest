//max hp bug (if your hp max, it will stop at max_hp)
if (global.PearHealth > global.MaxPearHealth)
{
	global.PearHealth = global.MaxPearHealth;
}

for (i = 0; i < global.PearHealth ; i++)
{
	
    //draw the color effect
	if (hsv < hsv_max) 
	{
        hsv += hsv_inc;
    }
 
    //create the color
    col = make_colour_hsv(hsv, saturation, 200);
 
    //draw the health fill
    draw_sprite_ext(spr_PearHealthBarFill, 0, posx + i, posy, 1, 1, 0, col, 1);
}

//draw the health center
for (i = 0; i < global.MaxPearHealth ; i++)
{
    draw_sprite(spr_PearHealthBarCentre, 0, posx + i, posy);
}

//draw the health left bar, adjust if needed

draw_sprite(spr_PearHealthBarLeft, 0, posx - left_posx, posy + left_posy);

//draw the health right bar, adjust if needed

draw_sprite(spr_PearHealthBarRight , 0, posx + global.MaxPearHealth + right_posx, posy + right_posy);