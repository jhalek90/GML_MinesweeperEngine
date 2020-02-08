
//scr_set_values()
//by: Wubs
//website: http://wubsgames.com
//
//counts the bombs around each cell, and sets the correct "number" to be displayed
for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		
		if grid[# xx,yy] > -1{
			var val=0
			
			if xx<grid_width-1{if grid[# xx+1,yy]=-1{val+=1}}
			if xx>0{if grid[# xx-1,yy]=-1{val+=1}}
			if yy<grid_height-1{if grid[# xx,yy+1]=-1{val+=1}}
			if yy>0{if grid[# xx,yy-1]=-1{val+=1}}
			
			if ((xx>0)and(yy>0)){if grid[# xx-1,yy-1]=-1{val+=1}}
			if ((xx<grid_width-1)and(yy>0)){if grid[# xx+1,yy-1]=-1{val+=1}}
			if ((xx<grid_width-1)and(yy<grid_height-1)){if grid[# xx+1,yy+1]=-1{val+=1}}
			if ((xx>0)and(yy<grid_height-1)){if grid[# xx-1,yy+1]=-1{val+=1}}
			
			if val>0{grid[# xx,yy]=val}
			
		}
	}
}