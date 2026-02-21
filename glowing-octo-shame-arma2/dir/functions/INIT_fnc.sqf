diag_log format ["Log: [gosa_fnc_init] start %1", time];

//--- Необходимые переменные для некоторых функций.
// для fnc_deleteGroup
deadGroup = grpNull;
gosa_cache_HQ = [objNull];

private["_path","_prefix"];
_path = "dir\Functions\";

// файлы без приставки
_prefix="gosa_";

//--- сервер
if (isServer) then {
	_arr = [
	];
	for "_i" from 0 to (count _arr -1) do {
		if (isNil format ["%1%2", _prefix, _arr select _i]) then {
			//diag_log format ["Log: [gosa_fnc_init] waitUntil '%1%2'", _prefix, _arr select _i, _path];
			//call compile format ["waitUntil {!isNil '%1%2'}", _prefix, _arr select _i, _path];
		};
	};
};
diag_log format ["Log: [gosa_fnc_init] server done %1", time];


//--- клиент
if !(IsDedicated) then {
	_arr = [
	];
	for "_i" from 0 to (count _arr -1) do {
		if (isNil format ["%1%2", _prefix, _arr select _i]) then {
			//diag_log format ["Log: [gosa_fnc_init] waitUntil '%1%2'", _prefix, _arr select _i, _path];
			//call compile format ["waitUntil {!isNil '%1%2'}", _prefix, _arr select _i, _path];
		};
	};
};
diag_log format ["Log: [gosa_fnc_init] client done %1", time];

//--- общие
_arr = [
];
for "_i" from 0 to (count _arr -1) do {
	if (isNil format ["%1%2", _prefix, _arr select _i]) then {
		//diag_log format ["Log: [gosa_fnc_init] waitUntil '%1%2'", _prefix, _arr select _i, _path];
		//call compile format ["waitUntil {!isNil '%1%2'}", _prefix, _arr select _i, _path];
	};
};
diag_log format ["Log: [gosa_fnc_init] common done %1", time];

if (!isMultiplayer) then {
	{
		//diag_log format ["Log: [gosa_fnc_init] waitUntil '%1%2'", _prefix, _x, _path];
		//call compile format ["waitUntil {!isNil '%1%2'}", _prefix, _x, _path];
	} forEach [
	];
};


#ifdef __ARMA3__
	BIS_fnc_distance2D = {_this select 0 distance2D (_this select 1)};
#else
	BIS_fnc_listPlayers = gosa_fnc_listPlayers;
	BIS_fnc_selectRandomWeighted = gosa_fnc_selectRandomWeighted;
#endif

gosa_fnc_init = true;
diag_log format ["Log: [gosa_fnc_init] done %1", time];
