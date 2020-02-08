//scr_cdo_actions()
//by: Wubs
//website: http://wubsgames.com
//
var open_sound=false

for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		
		if action_grid[# xx,yy]=actions.open{
			if grid_cover[# xx,yy]=1{
				scr_open_cell(xx,yy)
				if grid[# xx,yy]>-1{
					open_sound=true
					shake=2
					}else{
						shake=5
					}
				action_grid[# xx,yy]=actions.justopened
			}
		}
	}
}

if open_sound{
	audio_play_sound(snd_click,1,false)
}



for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		if action_grid[# xx,yy]=actions.opennext{
			//show_debug_message("opening")
			action_grid[# xx,yy]=actions.open
		}
	}
}

for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		if action_grid[# xx,yy]=actions.justopened{
			//show_debug_message("opening")
			action_grid[# xx,yy]=actions.nothing
		}
	}
}

