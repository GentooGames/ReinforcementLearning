
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     __         __         //
	//  /\  ___\   /\  ___\   /\ \       /\ \        //
	//  \ \ \____  \ \  __\   \ \ \____  \ \ \____   //
	//   \ \_____\  \ \_____\  \ \_____\  \ \_____\  //
	//    \/_____/   \/_____/   \/_____/   \/_____/  //
	//                                               //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	function GridCell(_config = {}) constructor {
		
		var _self  = self;
		var _owner = other;
		
		// private .........
		this = {};
		with (this) {
			__owner			= _owner;
			__x				= _config[$ "x"] ?? 0;
			__y				= _config[$ "y"] ?? 0;
			__i				= _config[$ "i"] ?? 0;
			__j				= _config[$ "j"] ?? 0;
			__wall_instance = undefined;	
		};
		
		// public ..........
		static render				 = function(_visible = true) {
			if (_visible) {
				var _wall_instance  = wall_instance_get();
				if (_wall_instance != undefined) {
					with (_wall_instance) {
						draw_sprite(sprite_index, image_index, x, y);	
					};
				}
			}
			return self;
		};
		static wall_instance_create	 = function() {
			if (this.__wall_instance != undefined) {
				instance_destroy(this.__wall_instance);	
			}
			this.__wall_instance = instance_create_depth(
				this.__x, this.__y, 0, obj_wall);
			return this.__wall_instance;
		};
		static wall_instance_exists  = function() {
			return this.__wall_instance != undefined;	
		};
		static wall_instance_destroy = function() {
			if (this.__wall_instance != undefined) {
				instance_destroy(this.__wall_instance);
				this.__wall_instance = undefined;
			}
			return self;
		};
		static wall_instance_get	 = function() {
			return this.__wall_instance;	
		};
		static wall_instance_set	 = function(_wall_instance) {
			this.__wall_instance = _wall_instance;
			return self;
		};
	};
	