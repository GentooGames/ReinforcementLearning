
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     __     _____     //
	//  /\  ___\   /\  == \   /\ \   /\  __-.   //
	//  \ \ \__ \  \ \  __<   \ \ \  \ \ \/\ \  //
	//   \ \_____\  \ \_\ \_\  \ \_\  \ \____-  //
	//    \/_____/   \/_/ /_/   \/_/   \/____/  //
	//                                          //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// objc_grid.draw //
	if (is_visible()) {
		var _line_width = 1;
		var _line_color = c_black;
	
		for (var _i = 0; _i < room_width; _i += CELL_SIZE) {
			draw_line_width_color(
				_i, 0, _i, room_height, _line_width, _line_color, _line_color
			);
		};
		for (var _j = 0; _j < room_height; _j += CELL_SIZE) {
			draw_line_width_color(
				0, _j, room_width, _j, _line_width, _line_color, _line_color
			);
		};
	}