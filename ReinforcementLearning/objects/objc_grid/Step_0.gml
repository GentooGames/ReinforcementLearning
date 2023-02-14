	
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     __     _____     //
	//  /\  ___\   /\  == \   /\ \   /\  __-.   //
	//  \ \ \__ \  \ \  __<   \ \ \  \ \ \/\ \  //
	//   \ \_____\  \ \_\ \_\  \ \_\  \ \____-  //
	//    \/_____/   \/_/ /_/   \/_/   \/____/  //
	//                                          //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// objc_grid.step //
	if (is_editing()) {
		
		// create wall
		if (mouse_check_button(mb_left)) {
			var _mouse_i   = get_grid_i(mouse_x);
			var _mouse_j   = get_grid_j(mouse_y);
			var _grid_cell = this.__grid[# _mouse_i, _mouse_j];
				_grid_cell.wall_instance_create();
		}
		
		// destroy wall
		if (mouse_check_button(mb_right)) {
			var _mouse_i   = get_grid_i(mouse_x);
			var _mouse_j   = get_grid_j(mouse_y);
			var _grid_cell = this.__grid[# _mouse_i, _mouse_j];
				_grid_cell.wall_instance_destroy();
		}
	}	