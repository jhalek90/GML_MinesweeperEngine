
//scr_reveal_bombs()
//by: Wubs
//website: http://wubsgames.com
//
//uncover all bombs
for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		if grid[# xx,yy]=-1{
			grid_cover[# xx,yy]=0
		}
	}
}

//cell_spr=spr_cell_game_over
game_over=true
