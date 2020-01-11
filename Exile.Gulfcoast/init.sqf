//Modifed by Thomas [T.K.O]
execVM "debug\blckClient.sqf";
if hasInterface then
{
	[] ExecVM "VEMFr_client\sqf\initClient.sqf"; // Client-side part of VEMFr
};


if (isServer) then {
	
	[] execVM "Custom\time.sqf";

};
