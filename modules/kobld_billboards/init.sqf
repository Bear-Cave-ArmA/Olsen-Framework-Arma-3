//Applies textures, woo.

#include "settings.sqf"

if (isServer) then {
	if (count kobld_billboards <= 0) then {kobld_billboards = allMissionObjects "Land_Billboard_F"};

	[{
		{
			if (count kobld_billboards_textureArray <= 0) then {kobld_billboards_textureArray = kobld_billboards_textureArray_base};

			_randomTexture = selectRandom kobld_billboards_textureArray;

			_x setObjectTextureGlobal [0,_randomTexture];
			kobld_billboards_textureArray = kobld_billboards_textureArray - [_randomTexture];
		} forEach kobld_billboards;
	}, [], 0] call CBA_fnc_waitAndExecute;
};