
//scr_open_cell(gridX,gridY)
//by: Wubs
//website: http://wubsgames.com
//
//open a single cell and set its next action if needed.
if grid_cover[# argument0,argument1]=1{
	grid_cover[# argument0,argument1]=0
		
	if grid[# argument0,argument1]=0{
		var xxx=argument0
		var yyy=argument1
		
		if xxx<grid_width-1{scr_set_action(argument0+1,argument1,actions.opennext)}
		if xxx>0{scr_set_action(argument0-1,argument1,actions.opennext)}
		if yyy<grid_height-1{scr_set_action(argument0,argument1+1,actions.opennext)}
		if yyy>0{scr_set_action(argument0,argument1-1,actions.opennext)}
			
		if ((xxx>0)and(yyy>0)){scr_set_action(argument0-1,argument1-1,actions.opennext)}
		if ((xxx<grid_width-1)and(yyy>0)){scr_set_action(argument0+1,argument1-1,actions.opennext)}
		if ((xxx<grid_width-1)and(yyy<grid_height-1)){scr_set_action(argument0+1,argument1+1,actions.opennext)}
		if ((xxx>0)and(yyy<grid_height-1)){scr_set_action(argument0-1,argument1+1,actions.opennext)}
	}
		
	if grid[# argument0,argument1]=-1{
		grid[# argument0,argument1]=-2
		scr_reveal_bombs()
	}
}