//playerinputs//
var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));
var keyInteract = keyboard_check(ord("E"));
var keyCharMenu = keyboard_check(ord("B"));

var inputDirection = point_direction(0,0, keyRight-keyLeft, keyDown-keyUp);
var inputMagnitude = (keyRight-keyLeft != 0) or (keyDown-keyUp !=0);

//movement//
var hSpeed = lengthdir_x(inputMagnitude*my_speed, inputDirection);
var vSpeed = lengthdir_y(inputMagnitude*my_speed, inputDirection);

x+=hSpeed
y+=vSpeed

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