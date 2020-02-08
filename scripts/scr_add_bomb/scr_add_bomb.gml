
//scr_add_bomb()
//by: Wubs
//website: http://wubsgames.com
//
//put a bomb in a random position
do{
	var xx=irandom(grid_width-1)
	var yy=irandom(grid_height-1)
	var val=grid[# xx,yy]
}until(val>-1)
grid[# xx,yy]=-1