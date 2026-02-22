private ["_grp"];

_grp = createGroup sideLogic;
gosa_grpLogic = _grp;
publicVariable "gosa_grpLogic";
// Совместимость.
if (isNil "group_logic") then {group_logic = _grp};
publicVariable "group_logic";
diag_log format ["Log: [init_server0] publicVariable 'gosa_grpLogic' %1 created", _grp];

#ifndef __ARMA3__
	BIS_missionScope = _grp createUnit ["FunctionsManager",[1000,10,0],[],0,"none"];
	publicVariable "BIS_missionScope";
	diag_log format ["Log: [init_server0] FunctionsManager %1 created", BIS_missionScope];
#endif
