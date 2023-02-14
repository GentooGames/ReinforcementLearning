
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
	
	// public ..............
	show		= function(_visible = true) {
		this.__grid_visible = _visible;
		return self;
	};
	snap_x		= function(_x) {
		var _i = get_grid_i(_x);
		return get_world_x(_i);
	};
	snap_y		= function(_y) {
		var _j = get_grid_j(_y);
		return get_world_y(_j);
	};
		
	get_grid_i	= function(_x) {
		return (_x div CELL_SIZE);
	};
	get_grid_j	= function(_y) {
		return (_y div CELL_SIZE);
	};
	get_world_x = function(_i) {
		return x + _i * CELL_SIZE;
	};
	get_world_y = function(_j) {
		return y + _j * CELL_SIZE;
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
	
	// private .............
	this = {};
	with (this) {
		__grid		   = ds_grid_create(GRID_WIDTH, GRID_HEIGHT);
		__grid_visible = true;
		__grid_editing = false;
		
		// init ........
		for (var _i = 0; _i < GRID_WIDTH; _i++) {
			for (var _j = 0; _j < GRID_HEIGHT; _j++) {
				__grid[# _i, _j] = new GridCell({
					x: _self.get_world_x(_i),
					y: _self.get_world_y(_j),
					i: _i,
					j: _j,
				});
			};	
		};
	};
	