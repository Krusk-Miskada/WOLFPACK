// City patrols/Fortify Spawn on Demand / Despawn
// Cities, 500 radius

if (!ADF_HC_execute) exitWith {}; // Autodetect: execute on the HC else execute on the server
params ["_t"];

// tCities1 (Panachori)
if ((isNil "g1a") && (isNil "g1b") && (isNil "g1c") && (_t == "1A")) exitWith {
	g1a = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1a, getPos tCities1, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;
	g1b = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1b, getPos tCities1, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g1c = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
	[g1c, getPos tCities1, 200, 3, true] call ADF_fnc_defendArea;
};
if (_t == "1B") exitWith {
	if !(isNil "g1a") then {{deleteVehicle _x} forEach units g1a; deleteGroup g1a; g1a = nil}; sleep 0.05;
	if !(isNil "g1b") then {{deleteVehicle _x} forEach units g1b; deleteGroup g1b; g1b = nil}; sleep 0.05;
	if !(isNil "g1c") then {{deleteVehicle _x} forEach units g1c; deleteGroup g1c; g1c = nil}; sleep 0.05;
};

// tCities2 (Zaros Main)
if ((isNil "g2a") && (isNil "g2b") && (isNil "g2c") && (_t == "2A")) exitWith {
	g2a = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2a, getPos tCities2, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g2b = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2b, getPos tCities2, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g2c = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup; 
	[g2c, getPos tCities2, 500, 3, true] call ADF_fnc_defendArea;
};
if (_t == "2B") exitWith {
	if !(isNil "g2a") then {{deleteVehicle _x} forEach units g2a; deleteGroup g2a; g2a = nil}; sleep 0.05;
	if !(isNil "g2b") then {{deleteVehicle _x} forEach units g2b; deleteGroup g2b; g2b = nil}; sleep 0.05;
	if !(isNil "g2c") then {{deleteVehicle _x} forEach units g2c; deleteGroup g2c; g2c = nil};
};

// tCities3 (Zaros South)
if ((isNil "g3a") && (isNil "g3b") && (isNil "g3c") && (_t == "3A")) exitWith {
	g3a = [getPos tCities3, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g3a, getPos tCities3, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5] call ADF_fnc_footPatrol;	
	g3b = [getPos tCities3, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g3b, getPos tCities3, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5] call ADF_fnc_footPatrol;	
	g3c = [getPos tCities3, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup; 
	[g3c, getPos tCities3, 300, 3, true] call ADF_fnc_defendArea;
};
if (_t == "3B") exitWith {
	if !(isNil "g3a") then {{deleteVehicle _x} forEach units g3a; deleteGroup g3a; g3a = nil}; sleep 0.05;
	if !(isNil "g3b") then {{deleteVehicle _x} forEach units g3b; deleteGroup g3b; g3b = nil}; sleep 0.05;
	if !(isNil "g3c") then {{deleteVehicle _x} forEach units g3c; deleteGroup g3c; g3c = nil};	
};

// tCities4 (Therisa)
if ((isNil "g4a") && (isNil "g4b") && (isNil "g4c") && (_t == "4A")) exitWith {
	g4a = [getPos tCities4, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g4a, getPos tCities4, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g4b = [getPos tCities4, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup; 
	[g4b, getPos tCities4, 300, 3, true] call ADF_fnc_defendArea; sleep 0.05;
	g4c = [getPos tCities4, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup; 
	[g4c, getPos tCities4, 300, 3, true] call ADF_fnc_defendArea;
};
if (_t == "4B") exitWith {
	if !(isNil "g4a") then {{deleteVehicle _x} forEach units g4a; deleteGroup g4a; g4a = nil}; sleep 0.05;
	if !(isNil "g4b") then {{deleteVehicle _x} forEach units g4b; deleteGroup g4b; g4b = nil}; sleep 0.05;
	if !(isNil "g4c") then {{deleteVehicle _x} forEach units g4c; deleteGroup g4c; g4c = nil};
};

// tCities5 (Factory)
if ((isNil "g5a") && (isNil "g5b") && (isNil "g5c") && (_t == "5A")) exitWith {
	g5a = [getPos tCities5, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g5a, getPos tCities5, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g5b = [getPos tCities5, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g5b, getPos tCities5, 300, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g5c = [getPos tCities5, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup; 
	[g5c, getPos tCities5, 300, 3, true] call ADF_fnc_defendArea;
};
if (_t == "5B") exitWith {
	if !(isNil "g5a") then {{deleteVehicle _x} forEach units g5a; deleteGroup g5a; g5a = nil}; sleep 0.05;
	if !(isNil "g5b") then {{deleteVehicle _x} forEach units g5b; deleteGroup g5b; g5b = nil}; sleep 0.05;
	if !(isNil "g5c") then {{deleteVehicle _x} forEach units g5c; deleteGroup g5c; g5c = nil};
};

// tApt (Airfield)
if ((isNil "g6a") && (isNil "g6b") && (isNil "g6c") && (_t == "AptA")) exitWith {
	g6a = [getMarkerPos "mHangarApt", EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g6a, getMarkerPos "mHangarApt", 150, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
	g6b = [getMarkerPos "mHangarApt", EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSentry")] call BIS_fnc_spawnGroup;
	[g6b, getMarkerPos "mHangarApt", 150, 4, "MOVE", "SAFE", "RED", "LIMITED", "FILE", 5, true] call ADF_fnc_footPatrol;	
};
if (_t == "Aptb") exitWith {};

