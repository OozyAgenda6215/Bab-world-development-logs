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


if (!global.gamePaused) script_execute(state);