#region DrawGrid
for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		
		if grid_cover[# xx,yy]=0{//opened cells
			draw_sprite_ext(spr_cell,1,x+xx*grid_size,y+yy*grid_size,1,1,0,c_white,1)
			draw_sprite(spr_cell_icons,1,x+xx*grid_size,y+yy*grid_size)
	
			if grid[# xx,yy]=-1{//bomb
				draw_sprite_ext(spr_cell,3,x+xx*grid_size,y+yy*grid_size,1,1,0,c_white,1)
				draw_sprite(spr_cell_icons,3,x+xx*grid_size,y+yy*grid_size)
			}
			
			if grid[# xx,yy]=-2{//bomb clicked
				draw_sprite_ext(spr_cell,4,x+xx*grid_size,y+yy*grid_size,1,1,0,c_white,1)
				draw_sprite(spr_cell_icons,4,x+xx*grid_size,y+yy*grid_size)
			}
			
			if grid[# xx,yy]>-1{//number
				draw_sprite(spr_numbers,grid[# xx,yy],x+xx*grid_size,y+yy*grid_size)
			}
		}
		
		if grid_cover[# xx,yy]=1{//covered
			draw_sprite_ext(spr_cell,0,x+xx*grid_size,y+yy*grid_size,1,1,0,c_white,1)
		}
		
		if grid_cover[# xx,yy]=2{//flagged
			draw_sprite_ext(spr_cell,2,x+xx*grid_size,y+yy*grid_size,1,1,0,c_white,1)
			draw_sprite(spr_cell_icons,2,x+xx*grid_size,y+yy*grid_size)
		}
	}
}
#endregion

#region DrawInfo
draw_set_halign(fa_center)

if !game_over{
	draw_sprite(spr_hover,0,x+mouse_xx*grid_size,y+mouse_yy*grid_size)
	}else{
	draw_text(160,0,"R : Restart")
}
#endregion