if (isDedicated) exitWith {};

// Ensure that enhanced movement vehicle enter menu doesn't work
[] spawn {
	waitUntil {
		private _c = babe_core_modkeydata select { 
			_x select 1 == "Use" 
		};
		count _c > 0
	};
	babe_core_modkeydata = babe_core_modkeydata select { 
		_x select 1 != "Use" 
	};
};
