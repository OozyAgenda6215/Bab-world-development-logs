// pause the game
if (keyboard_check(vk_escape))
{
	global.gamePaused = !global.gamePaused;
	
	if(global.gamePaused)
	{
		with(all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
		
	}else
	{
		with(all)
		{
			image_speed=gamePausedImageSpeed;
		
		}
	
	
	
	}
}	