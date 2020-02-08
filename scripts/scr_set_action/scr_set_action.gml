//scr_set_action(gridX,gridY,action)
//by: Wubs
//website: http://wubsgames.com
//
//sets the action for a cell
if grid_cover[# argument0,argument1]=1{
	if action_grid[# argument0, argument1 ]=actions.nothing{
		action_grid[# argument0, argument1 ]=argument2
	}
}
