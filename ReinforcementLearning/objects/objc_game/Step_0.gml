
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     __    __     ______     //
	//  /\  ___\   /\  __ \   /\ "-./  \   /\  ___\    //
	//  \ \ \__ \  \ \  __ \  \ \ \-./\ \  \ \  __\    //
	//   \ \_____\  \ \_\ \_\  \ \_\ \ \_\  \ \_____\  //
	//    \/_____/   \/_/\/_/   \/_/  \/_/   \/_____/  //
	//                                                 //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// objc_game.step //
	if (keyboard_check_pressed(ord("R"))) {
		room_restart();	
	}
	if (keyboard_check_pressed(ord("F"))) {
		window_set_fullscreen(!window_get_fullscreen());
	}
	