GVAR(ServerViewDistance) = 2500; //View distance for the server (the ai's)

GVAR(TimeLimit) = 30; //Time limit in minutes, to disable the time limit set it to 0
GVAR(TimeLimitMessage) = "TIME LIMIT REACHED!"; //The message displayed when the time runs out
GVAR(EndConditionFrequency) = 10; // Frequency in seconds that the end conditions are checked

//If respawn is enabled you must create empty game logics, for respawn points, following the name format GVAR(side_respawn). Example: FW_west_respawn
//Ticket pools for different sides
GVAR(RespawnTickets_West) = 0;
GVAR(RespawnTickets_East) = 0;
GVAR(RespawnTickets_Ind) = 0;
GVAR(RespawnTickets_Civ) = 0;

//Individual Tickets for different sides 
GVAR(IndividualRespawnTickets_West) = 0;
GVAR(IndividualRespawnTickets_East) = 0;
GVAR(IndividualRespawnTickets_Ind) = 0;
GVAR(IndividualRespawnTickets_Civ) = 0;

//wave respawn
GVAR(WaveSizeWest) = 0; //How many players have to respawn before wave is released
GVAR(WaveSizeEast) = 0;
GVAR(WaveSizeInd) = 0;
GVAR(WaveSizeCiv) = 0;

//Players should be put in enclosed space, when their number reaches treshold, the defined "gate" will disappear for 30 seconds
//it has to be defined for wave respawn to work
//GVAR(RespawnPenGateWest) = YourEditorObjectName;
//GVAR(RespawnPenGateEast) = YourEditorObjectName;
//GVAR(RespawnPenGateInd) = YourEditorObjectName;
//GVAR(RespawnPenGateCiv) = YourEditorObjectName;

[west, "USMC", "player"] call FUNC(AddTeam); //Adds a player team called USMC on side west
[east, "VDV", "ai"] call FUNC(AddTeam); //Adds a ai team called VDV on side east
[resistance, "Local Militia", "ai"] call FUNC(AddTeam); //Adds a player team called Local Militia on side resistance (aka independent)
[civilian, "Local Civilians", "player"] call FUNC(AddTeam); //Adds a player team called Local Civilians on side civilian
