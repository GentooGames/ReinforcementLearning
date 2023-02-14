
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	//   ______     ______     ______     __   __     ______   //
	//  /\  __ \   /\  ___\   /\  ___\   /\ "-.\ \   /\__  _\  //
	//  \ \  __ \  \ \ \__ \  \ \  __\   \ \ \-.  \  \/_/\ \/  //
	//   \ \_\ \_\  \ \_____\  \ \_____\  \ \_\\"\_\    \ \_\  //
	//    \/_/\/_/   \/_____/   \/_____/   \/_/ \/_/     \/_/  //
	//                                                         //
	// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ //
	// obj_agent_QL.create //
	
	var _self = self;
	
	// private .............
	this = {};
	with (this) {
		__i		  = _self[$ "i"] ?? 0;
		__j		  = _self[$ "j"] ?? 0;
		__i_start = __i;
		__j_start = __j;
	};
	
	// public ..............
	start	= function() {};
	stop	= function() {};
	restart = function() {};
	
	get_i	= function() {
		return this.__i;
	};
	get_j	= function() {
		return this.__j;
	};
		
	/*
	
	// Q(St,At) ← Q(St,At) + α[Rt+1 + γmaxQ(St+1,at+1) − Q(St,At)]
	
	// .........................................
	// function that returns the Action to take
	// given the current State, based off of the 
	// Policy PI
	
		Action = Policy_PI(State);
	
	// .........................................
	// function that returns the value of a given
	// State, based off of the Policy PI
	
		State_Value = Policy_Value(State);
		
	// .........................................
	// function that returns the value of an 
	// Action based off of that Action, in the
	// given State.
		
		Action_Value = Q(State, Action);
		
	// the Q in this example, just refers to the
	// function that takes a State & Action for
	// evaluation.
		
	// .........................................
	// reinforcment learning models will usually
	// use one or the other: state_value, or 
	// action_value consideration
	
	// note: state_value consideration relies 
	// directly on the Policy_PI
	
	// the value of a state is equivalent to the
	// highest value action taken in that state.
	
	// .........................................
	// Q-learning is a Temporal Difference (TD) 
	// algorithm in that it updates after EVERY
	// action taken, rather than at the end of
	// execution.
	
	// neural net API: https://www.w3.org/TR/webnn/#programming-model
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	