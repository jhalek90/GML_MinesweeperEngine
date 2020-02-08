/// @description
#region restart/quit keys
if keyboard_check_pressed(ord("R")){
	ds_grid_destroy(grid)
	ds_grid_destroy(grid_cover)
	ds_grid_destroy(action_grid)
	room_restart()
	exit
}

if keyboard_check_pressed(vk_escape){
	ds_grid_destroy(grid)
	ds_grid_destroy(grid_cover)
	ds_grid_destroy(action_grid)
	game_end()
	exit
}
#endregion

#region timers and screen shake

if action_timer>0{
	action_timer-=1
}

if shake>0{
	shake-=1
}

x=my_x+(shake*choose(1,-1))//screen shake just randomly moves the object around
y=my_y+(shake*choose(1,-1))
#endregion

#region mouse coords to game coords
mouse_xx=floor((mouse_x-x)/grid_size)
mouse_yy=floor((mouse_y-y)/grid_size)
mouse_xx=clamp(mouse_xx,0,grid_width-1)
mouse_yy=clamp(mouse_yy,0,grid_height-1)
#endregion

#region board actions
can_move=scr_check_actions()//we check to see if any spaces on the board require an action
if can_move=false{//if they do
	if action_timer=0{//we wait for the timer to run down
		scr_do_actions()//and then perform those actions
		action_timer=action_time//and reset the timer
	}
	exit//users cant click, while actions are taking place
}

scr_check_for_win()//check the board for a win condition
#endregion

if game_over=true{exit}//we dont allow user's to click new squares after the game ends.

#region clicking game board
if mouse_check_button_pressed(mb_left){
	if grid_cover[# mouse_xx,mouse_yy]=1{//only click on covered cells
		
		if grid[# mouse_xx,mouse_yy]<0{
			if first_click=true{//this prevents us from clicking on a bomb, as our first click
				grid[# mouse_xx,mouse_yy]=0
				scr_add_bomb()
				scr_set_values()
			}else{
				audio_play_sound(snd_mine,1,false)
			}
		}
		scr_set_action(mouse_xx,mouse_yy,actions.open)//set the grid cell to open next step
		first_click=false
	}
}

if mouse_check_button_pressed(mb_right){//right click allows us to set/remove flags
	if grid_cover[# mouse_xx,mouse_yy]=1{grid_cover[# mouse_xx,mouse_yy]=2 audio_play_sound(snd_flag,1,false) exit}
	if grid_cover[# mouse_xx,mouse_yy]=2{grid_cover[# mouse_xx,mouse_yy]=1 audio_play_sound(snd_flag,1,false) exit}
}
#endregion