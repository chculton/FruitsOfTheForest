//if((global.global.Player1Health < 5) && (global.global.Player1Health >= 4))
//Tracking health
if(global.DecreaseHealthBarP1 == true)
{
	instance_destroy(Array1[Player1HealthbarSize]);
	
	global.DecreaseHealthBarP1 = false;
	Player1HealthbarSize--;
}

if(global.DecreaseHealthBarP2 == true)
{
	instance_destroy(Array2[Player2HealthbarSize]);
	
	global.DecreaseHealthBarP2 = false;
	Player2HealthbarSize--;
}

//To update spire location with screen
//for(i = 0; i < global.Player1Health; i++)
//{
	//Array1[i] = ;
	//spawnSpacing1 += 100;
//}