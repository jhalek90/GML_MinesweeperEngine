
//scr_check_actions
//by: Wubs
//website: http://wubsgames.com
//
//check to see if any cell on the board holds an action

var no_actions=true

for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		if action_grid[# xx,yy] != actions.nothing{
			no_actions=false
		}
	}
}

return no_actions