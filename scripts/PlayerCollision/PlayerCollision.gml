function PlayerCollision(hSpeed,vSpeed){
var _collision = false;
var tilesize = TILE_SIZE;
//Horizontal Tiles
if (tilemap_get_at_pixel(collisionMap, x+hSpeed, y)){
	if(sign(hSpeed == -1)) x-=x mod tilesize;
	if (sign(hSpeed== 1)) x+= tilesize-1;
	hSpeed = 0;
	_collision = true; 
}
//Horizontal move commit 
x+=hSpeed;
// Vertical Tiles
if (tilemap_get_at_pixel(collisionMap, x, y+ vSpeed)){
	if(sign(vSpeed == -1)) y-=y mod tilesize;
	if (sign(vSpeed == 1)) y+= tilesize-1;
	vSpeed = 0;
	_collision = true; 
}
//Vertical move commit 
y+=vSpeed;
return _collision;
}