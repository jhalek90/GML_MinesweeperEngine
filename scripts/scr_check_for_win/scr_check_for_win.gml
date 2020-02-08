//scr_check_for_win()
//by: Wubs
//website: http://wubsgames.com
//
//checks to see if the nmber of covered cells = the number of bombs. if so, you win
var count=0
for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		if grid_cover[# xx,yy]>0{
			count+=1
		}
	}
}

if count=bombs_amount{
	game_over=true//you win
}