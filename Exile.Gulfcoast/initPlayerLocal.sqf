//By Thomas [T.K.O] need help discord.gg/rDxWpXb / ts.tko-gameserver.de /
// Load Status Bar
[] execVM "Custom\StatusBar\statusBar_init.sqf";
if (!hasInterface || isServer) exitWith {};

// 42 NPCs
private _npcs = [
["Exile_Trader_AircraftCustoms", ["HubSittingAtTableU_idle1"], "Exile_Trader_AircraftCustoms", "WhiteHead_18", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","",[],["","","","","",""]], [8870.21, 5031.99, 14.4027], [0.623015, -0.78221, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubSittingAtTableU_idle3"], "Exile_Trader_Aircraft", "WhiteHead_11", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","",[],["","","","","",""]], [8870.06, 5030.78, 14.4027], [0.79994, 0.60008, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["c5efe_MichalLoop"], "Exile_Trader_VehicleCustoms", "Sturrock", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [8867.92, 5032.53, 14.4027], [-0.860848, -0.508863, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["c5efe_MichalLoop"], "Exile_Trader_Vehicle", "WhiteHead_19", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","",[],["","","","","",""]], [8867.36, 5033.56, 14.4027], [-0.867907, -0.496727, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubSittingChairB_idle2"], "Exile_Trader_WasteDump", "WhiteHead_19", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [8883.25, 5027.38, 14.1014], [0.601915, -0.79856, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingChairB_idle2"], "Exile_Trader_Hardware", "WhiteHead_19", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [8850.78, 5064.68, 14.4027], [0.321292, -0.94698, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubSittingHighB_idle2"], "Exile_Trader_SpecialOperations", "WhiteHead_15", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [8863.8, 5072.56, 14.7136], [0.108836, -0.99406, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["InBaseMoves_SittingRifle1"], "Exile_Trader_Armory", "GreekHead_A3_08", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [8852.54, 5056.19, 14.4027], [0.779711, 0.62614, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["InBaseMoves_SittingRifle2"], "Exile_Trader_Equipment", "WhiteHead_18", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","",[],["","","","","",""]], [8849.24, 5063.36, 14.4027], [0.804568, -0.593861, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUC_idle3"], "Exile_Trader_Food", "WhiteHead_02", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Combat",[],["","","","","",""]], [8876.25, 5024.16, 14.4426], [-0.554129, 0.83243, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingChairB_idle2"], "Exile_Trader_Office", "WhiteHead_02", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Tactical_Clear",[],["","","","","",""]], [8888.42, 5033.99, 14.4222], [-0.456187, 0.889884, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubSittingAtTableU_idle1"], "Exile_Trader_AircraftCustoms", "WhiteHead_04", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [10200.9, 13872.9, 38.0578], [0.995792, -0.0916435, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubSittingAtTableU_idle3"], "Exile_Trader_Aircraft", "GreekHead_A3_07", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Combat",[],["","","","","",""]], [10201.7, 13871.9, 38.0578], [0.120469, 0.992717, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["c5efe_MichalLoop"], "Exile_Trader_VehicleCustoms", "WhiteHead_14", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","",[],["","","","","",""]], [10199, 13871.6, 38.0578], [-0.228466, -0.973552, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["c5efe_MichalLoop"], "Exile_Trader_Vehicle", "WhiteHead_10", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [10197.8, 13871.9, 38.0578], [-0.242111, -0.970249, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubSittingChairB_idle2"], "Exile_Trader_WasteDump", "WhiteHead_20", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Black",[],["","","","","",""]], [10213.2, 13879.1, 37.8027], [0.992991, -0.11819, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingChairB_idle2"], "Exile_Trader_Hardware", "Sturrock", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Combat",[],["","","","","",""]], [10163.9, 13881.5, 38.0478], [0.905911, -0.423469, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubSittingHighB_idle2"], "Exile_Trader_SpecialOperations", "GreekHead_A3_09", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [10167.2, 13896.3, 38.3075], [0.792857, -0.609407, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["InBaseMoves_SittingRifle1"], "Exile_Trader_Armory", "WhiteHead_07", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [10171.2, 13876.9, 38.0478], [0.0876592, 0.99615, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["InBaseMoves_SittingRifle2"], "Exile_Trader_Equipment", "Barklem", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [10163.8, 13879.5, 38.0478], [0.985486, 0.169757, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUC_idle3"], "Exile_Trader_Food", "WhiteHead_01", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","",[],["","","","","",""]], [10210.8, 13871.8, 38.0877], [-0.984368, 0.176124, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingChairB_idle2"], "Exile_Trader_Office", "GreekHead_A3_08", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","",[],["","","","","",""]], [10212.1, 13887.4, 38.0573], [-0.958055, 0.286584, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["Acts_passenger_flatground_leanright"], "Exile_Trader_WasteDump", "WhiteHead_16", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","",[],["","","","","",""]], [3345.76, 11379.2, 6.13607], [0.99972, 0.0236824, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["Acts_passenger_flatground_leanright"], "Exile_Trader_BoatCustoms", "WhiteHead_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Aviator",[],["","","","","",""]], [3346.84, 11378.7, 6.13607], [0.0618266, 0.998087, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["Acts_passenger_flatground_leanright"], "Exile_Trader_Boat", "WhiteHead_01", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Clear",[],["","","","","",""]], [3348.5, 11378.9, 6.13607], [-0.0659238, 0.997825, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["HubSittingAtTableU_idle1"], "Exile_Trader_AircraftCustoms", "WhiteHead_06", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Tactical_Clear",[],["","","","","",""]], [2962.49, 14476.5, 14.5099], [0.800023, -0.599969, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["HubSittingAtTableU_idle3"], "Exile_Trader_Aircraft", "WhiteHead_04", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Clear",[],["","","","","",""]], [2962.65, 14475.3, 14.5139], [0.622906, 0.782296, 0], [0, 0, 1]],
["Exile_Trader_VehicleCustoms", ["c5efe_MichalLoop"], "Exile_Trader_VehicleCustoms", "WhiteHead_05", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Tactical_Clear",[],["","","","","",""]], [2960.14, 14476.4, 14.5227], [-0.704836, -0.709371, 0], [0, 0, 1]],
["Exile_Trader_Vehicle", ["c5efe_MichalLoop"], "Exile_Trader_Vehicle", "WhiteHead_11", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"H_RacingHelmet_4_F","G_Combat",[],["","","","","",""]], [2959.33, 14477.3, 14.5235], [-0.714725, -0.699405, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["HubSittingChairB_idle2"], "Exile_Trader_WasteDump", "GreekHead_A3_05", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [2976.16, 14475.3, 13.8822], [0.783724, -0.621109, 0], [0, 0, 1]],
["Exile_Trader_Hardware", ["HubSittingChairB_idle2"], "Exile_Trader_Hardware", "WhiteHead_05", [[],[],[],["U_C_WorkerCoveralls",[]],["V_BandollierB_rgr",[]],["B_UAV_01_backpack_F",[]],"H_Booniehat_khk_hs","G_Tactical_Clear",[],["","","","","",""]], [2935.45, 14503.2, 14.4728], [0.549558, -0.835455, 0], [0, 0, 1]],
["Exile_Trader_SpecialOperations", ["HubSittingHighB_idle2"], "Exile_Trader_SpecialOperations", "GreekHead_A3_08", [["arifle_MX_Black_F","","","",[],[],""],[],[],["U_B_CTRG_1",[]],["V_PlateCarrierGL_blk",[]],["B_Parachute",[]],"H_HelmetB_light_black","G_Balaclava_lowprofile",[],["","","","","","NVGoggles_OPFOR"]], [2945.93, 14514.2, 14.8024], [0.355822, -0.934554, 0], [0, 0, 1]],
["Exile_Trader_Armory", ["InBaseMoves_SittingRifle1"], "Exile_Trader_Armory", "WhiteHead_01", [["srifle_DMR_06_olive_F","","","",[],[],""],[],[],["U_Rangemaster",[]],["V_Rangemaster_belt",[]],[],"H_Cap_headphones","G_Shades_Black",[],["","","","","",""]], [2939.29, 14495.4, 14.4728], [0.596764, 0.802417, 0], [0, 0, 1]],
["Exile_Trader_Equipment", ["InBaseMoves_SittingRifle2"], "Exile_Trader_Equipment", "WhiteHead_10", [["arifle_MX_GL_Black_F","","","",[],[],""],[],[],["U_BG_Guerrilla_6_1",[]],["V_I_G_resistanceLeader_F",[]],[],"H_Watchcap_khk","G_Combat",[],["","","","","",""]], [2934.29, 14501.5, 14.4728], [0.928253, -0.371949, 0], [0, 0, 1]],
["Exile_Trader_Food", ["HubStandingUC_idle3"], "Exile_Trader_Food", "WhiteHead_19", [[],[],[],["U_C_Poloshirt_blue",[]],[],[],"H_Cap_tan","G_Aviator",[],["","","","","",""]], [2970.3, 14470.4, 14.4728], [-0.746015, 0.665929, 0], [0, 0, 1]],
["Exile_Trader_Office", ["HubSittingChairB_idle2"], "Exile_Trader_Office", "WhiteHead_15", [[],[],[],["U_I_G_resistanceLeader_F",[]],["V_Rangemaster_belt",[]],[],"H_Hat_brown","G_Combat",[],["","","","","",""]], [2979.61, 14483, 14.4728], [-0.665712, 0.746209, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["Acts_passenger_flatground_leanright"], "Exile_Trader_WasteDump", "AfricanHead_01", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [13655.1, 8838.09, 1.3269], [-0.872907, -0.487886, 0], [0, 0, 1]],
["Exile_Trader_BoatCustoms", ["Acts_passenger_flatground_leanright"], "Exile_Trader_BoatCustoms", "WhiteHead_14", [[],[],[],["Exile_Uniform_ExileCustoms",[]],[],[],"","G_Combat",[],["","","","","",""]], [13654, 8838.01, 1.17942], [0.411515, -0.911403, 0], [0, 0, 1]],
["Exile_Trader_Boat", ["Acts_passenger_flatground_leanright"], "Exile_Trader_Boat", "WhiteHead_19", [[],[],[],["U_OrestesBody",[]],[],[],"H_Cap_surfer","G_Tactical_Clear",[],["","","","","",""]], [13652.6, 8837.09, 0.997831], [0.524352, -0.851501, 0], [0, 0, 1]],
["Exile_Trader_Aircraft", ["Acts_passenger_flatground_leanright"], "Exile_Trader_Aircraft", "WhiteHead_21", [[],[],[],["U_I_pilotCoveralls",[]],[],[],"H_PilotHelmetHeli_O","G_Tactical_Black",[],["","","","","",""]], [8466.11, 13042.5, 19.9107], [-0.375596, 0.926784, 0], [0, 0, 1]],
["Exile_Trader_AircraftCustoms", ["Acts_passenger_flatground_leanright"], "Exile_Trader_AircraftCustoms", "WhiteHead_04", [[],[],[],["Exile_Uniform_ExileCustoms",[]],["V_RebreatherB",[]],[],"H_PilotHelmetFighter_B","G_Combat",[],["","","","","",""]], [8462.85, 13041.4, 19.9108], [0.915178, 0.403051, 0], [0, 0, 1]],
["Exile_Trader_WasteDump", ["Acts_passenger_flatground_leanright"], "Exile_Trader_WasteDump", "WhiteHead_06", [[],[],[],["U_I_G_Story_Protagonist_F",[]],["V_Rangemaster_belt",[]],[],"H_MilCap_gry","G_Tactical_Clear",[],["","","","","",""]], [8464.02, 13041.3, 19.9107], [-0.404414, 0.914576, 0], [0, 0, 1]]
];

{
    private _logic = "Logic" createVehicleLocal [0, 0, 0];
    private _trader = (_x select 0) createVehicleLocal [0, 0, 0];
    private _animations = _x select 1;
    
    _logic setPosWorld (_x select 5);
    _logic setVectorDirAndUp [_x select 6, _x select 7];
    
    _trader setVariable ["BIS_enableRandomization", false];
    _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
    _trader setVariable ["ExileAnimations", _animations];
    _trader setVariable ["ExileTraderType", _x select 2];
    _trader disableAI "ANIM";
    _trader disableAI "MOVE";
    _trader disableAI "FSM";
    _trader disableAI "AUTOTARGET";
    _trader disableAI "TARGET";
    _trader disableAI "CHECKVISIBLE";
    _trader allowDamage false;
    _trader setFace (_x select 3);
    _trader setUnitLoadOut (_x select 4);
    _trader setPosWorld (_x select 5);
    _trader setVectorDirAndUp [_x select 6, _x select 7];
    _trader reveal _logic;
    _trader attachTo [_logic, [0, 0, 0]];
    _trader switchMove (_animations select 0);
    _trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
}
forEach _npcs;
ExileClientXM8IsPowerOn = true;
