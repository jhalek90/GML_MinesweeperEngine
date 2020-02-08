/// @description
randomize()

#region game size vars
///game size 
grid_width=9//game board's width
grid_height=9//game board's height
bombs_amount=9//game board's bomb amount
grid_size=16//game board's per-cell size. this should match your sprite size
#endregion

#region drawing vars
//drawing vars
my_x=(((room_width-16)/2)-((grid_width*grid_size/2)))+8
my_y=(((room_height-24)/2)-((grid_height*grid_size/2)))+16
mouse_xx=0
mouse_yy=0
shake=0
#endregion

#region game control vars
//game control vars
first_click=true//cant get a bomb on your first click
can_move=true
action_timer=0
game_over=false
action_time=5
#endregion

#region define grids
//create the ds grids we need to run the game
grid=ds_grid_create(grid_width,grid_height)//this holds the actual values of each cell
grid_cover=ds_grid_create(grid_width,grid_height)//which cells are covered
action_grid=ds_grid_create(grid_width,grid_height)//what actions each cell needs to take.
#endregion

#region fill grids

for(var yy=0; yy<grid_height; yy++){
	for(var xx=0; xx<grid_width; xx++){
		grid_cover[# xx,yy]=1
		action_grid[# xx,yy]=actions.nothing
	}
}

repeat(bombs_amount){scr_add_bomb()}//adds bombs to our gameboard.

scr_set_values()//sets the "number" values for non-bomb squares in "grid"
#endregion

#region enums
enum actions{
	nothing,
	open,
	opennext,
	justopened
}
#endregion