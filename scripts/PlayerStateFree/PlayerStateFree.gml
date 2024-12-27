function PlayerStateFree(){
//movement//
hSpeed = lengthdir_x(inputMagnitude*my_speed, inputDirection);
vSpeed = lengthdir_y(inputMagnitude*my_speed, inputDirection);

PlayerCollision();

//sprite updating
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{ 
	direction = inputDirection;
	sprite_index = spriteRun;
} else sprite_index = spriteIdle;
if (_oldSprite != sprite_index) localFrame=0;
//update image index
PlayerAnimateSprite()
//change state
if (keyDash)
{
 state = PlayerStateDash
 moveDistanceRemaining = distanceDash
}
}