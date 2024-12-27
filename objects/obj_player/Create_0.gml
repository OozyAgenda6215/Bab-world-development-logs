state = PlayerStateFree;

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));

image_speed = 0;
hspeed=0;
vspeed=0;
my_speed=1.0;
speedDash = 2.5;
distanceDash = 62;

spriteDash = SPR_Player_Dash;
spriteRun = SPR_Player_Walk;
spriteIdle = SPR_Player;
localFrame = 0;
//playerinputs//
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyDash = keyboard_check(vk_space);
keyInteract = keyboard_check(ord("E"));
keyCharMenu = keyboard_check(ord("B"));

inputDirection = point_direction(0,0, keyRight-keyLeft, keyDown-keyUp);
inputMagnitude = (keyRight-keyLeft != 0) or (keyDown-keyUp !=0);