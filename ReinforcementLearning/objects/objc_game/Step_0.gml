
	if (keyboard_check_pressed(ord("R"))) {
		room_restart();	
	}
	if (keyboard_check_pressed(ord("F"))) {
		window_set_fullscreen(!window_get_fullscreen());
	}