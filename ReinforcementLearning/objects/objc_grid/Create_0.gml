
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     __     _____     //
	//  /\  ___\   /\  == \   /\ \   /\  __-.   //
	//  \ \ \__ \  \ \  __<   \ \ \  \ \ \/\ \  //
	//   \ \_____\  \ \_\ \_\  \ \_\  \ \____-  //
	//    \/_____/   \/_/ /_/   \/_/   \/____/  //
	//                                          //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// objc_grid.create //
	#macro CELL_SIZE	8
	#macro GRID_WIDTH	room_width  div CELL_SIZE
	#macro GRID_HEIGHT	room_height div CELL_SIZE
	
	var _self = self;
	
	// private .............
	this = {};
	with (this) {
		__grid		   = ds_grid_create(GRID_WIDTH, GRID_HEIGHT);
		__grid_visible = true;
		__grid_editing = false;
	};
	
	// public ..............
	show		= function(_visible = true) {
		this.__grid_visible = _visible;
		return self;
	};
	is_editing	= function() {
		return this.__grid_editing;	
	};
	is_visible	= function() {
		return this.__grid_visible;	
	};
	set_editing = function(_editing) {
		this.__grid_editing = _editing;
		return self;
	};
	
	
	