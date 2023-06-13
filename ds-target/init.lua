function Load(name)
	local resourceName = GetCurrentResourceName()
	local chunk = LoadResourceFile(resourceName, ('data/%s.lua'):format(name))
	if chunk then
		local err
		chunk, err = load(chunk, ('@@%s/data/%s.lua'):format(resourceName, name), 't')
		if err then
			error(('\n^1 %s'):format(err), 0)
		end
		return chunk()
	end
end

-------------------------------------------------------------------------------
-- Settings
-------------------------------------------------------------------------------

Config = {}

-- It's possible to interact with entities through walls so this should be low
Config.MaxDistance = 5.0

-- Enable debug options
Config.Debug = false

-- Supported values: true, false
Config.Standalone = false

-- Enable outlines around the entity you're looking at
Config.EnableOutline = false

-- Whether to have the target as a toggle or not
Config.Toggle = false

-- Draw sprite on location
Config.DrawSprite = true
Config.DrawDistance = 3.0

-- The color of the outline in rgb, the first value is red, the second value is green and the last value is blue. Here is a link to a color picker to get these values: https://htmlcolorcodes.com/color-picker/
Config.OutlineColor = {255, 255, 255}

-- Enable default options (Toggling vehicle doors)
Config.EnableDefaultOptions = true

-- Disable the target eye whilst being in a vehicle
Config.DisableInVehicle = false

-- Key to open the target eye, here you can find all the names: https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKey = 'LMENU' -- Left Alt

-- Control for key press detection on the context menu, it's the Right Mouse Button by default, controls are found here https://docs.fivem.net/docs/game-references/controls/
Config.MenuControlKey = 238

-------------------------------------------------------------------------------
-- Target Configs
-------------------------------------------------------------------------------

-- These are all empty for you to fill in, refer to the .md files for help in filling these in

Config.CircleZones = {



}

Config.BoxZones = {

}

Config.PolyZones = {

}

Config.TargetBones = {

}

Config.TargetEntities = {

}
-- 		models = -1126237515,
		--models = -1364697528,
		--models =  506770882,
Config.TargetModels = {
	["bike"] = {
        models = {
            `bmx`,
            `cruiser`,
            `scorcher`,
            `fixter`,
            `tribike`,
            `tribike2`,
            `tribike3`,
        },
        options = {
            {
                type = "event",
                event = "pickup:bike",
                parameters = {},
                icon = "fas fa-bicycle",
                label = "Pickup Bike",
            },
        },
        distance = 5
    },

	['Atm4'] = {
        models = 506770882,
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-money-bill",
                label = "Access ATM",
				entity = entity,
				atm = true
            },
        },
	
        distance = 2.5
	},

	['Atm3'] = {
        models = -1364697528,
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-money-bill",
                label = "Access ATM",
				entity = entity,
				atm = true
            },
        },
	
        distance = 2.5
	},
	['Atm2'] = {
        models = -1126237515,
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-money-bill",
                label = "Access ATM",
				entity = entity,
				atm = true
            },
        },
	
        distance = 2.5
	},
	['Atm'] = {
        models = -870868698,
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-money-bill",
                label = "Access ATM",
				entity = entity,
				atm = true
            },
        },
	
        distance = 2.5
	},
	["Police Shop"] = {
        models = {
            "s_f_y_cop_01",
        },
        options = {
            {
                type = "client",
                event = "ds-policegarage:Menu",
                icon = "fas fa-car",
                label = "Open Police Garage",
				job = "police",
            },
        },
        distance = 2.5,
    },
    ["sea world"] = {
        models = {
            "cs_dom",
        },
        options = {
            {
                type = "client",
                event = "ds-shops:marketshop",
                icon = "fas fa-circle",
                label = "Buy Gear",
            },
        },
        distance = 2.5,
    },
	["Bank"] = {
        models = {
            `ig_bankman`,
        },
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-piggy-bank",
                label = "Access Bank",
				entity = entity,
				atm = false
            },
			{
				type = "client",
				event = "ds-banking:client:accountManagmentMenu",
				icon = "fas fa-money-check",
				label = 'Manage Bank Accounts'
			}
        },
        distance = 2.5
    },
	["Bank2"] = {
        models = {
            `cs_fbisuit_01`,
        },
        options = {
            {
                type = "client",
                event = "ds-banking:client:openBankUI",
                icon = "fas fa-piggy-bank",
				label = "Access Bank",
				entity = entity,
				atm = false
            },
 			{
                 event = "ds-banking:clientt:Paycheck:pickup",
                 icon = "fas fa-envelope",
                 label = "Collect Paycheck"
            },
			{
				type = "client",
				event = "ds-banking:client:accountManagmentMenu",
				icon = "fas fa-money-check",
				label = 'Manage Bank Accounts'
			}
        },
        distance = 3.0
    },
	["VehicleRental"] = {
        models = {
            `a_m_y_stbla_02`,
        },
        options = {
            {
                type = "client",
                event = "ds-rental:openMenu",
                icon = "fas fa-car",
                label = "Rent Vehicle",
            },
        },
        distance = 4.0
    },
    -- ["youtool shops"] = {
    --     models = {
    --         "s_m_m_lathandy_01",
    --     },
    --     options = {
    --         {
    --             type = "client",
    --             event = "ds-shops:marketshop",
    --             icon = "fas fa-wrench",
    --             label = "Buy Tools",
    --         },
    --     },
    --     distance = 2.5,
    -- },
    ["sea world"] = {
        models = {
            "cs_dom",
        },
        options = {
            {
                type = "client",
                event = "ds-shops:marketshop",
                icon = "fas fa-circle",
                label = "Buy Gear",
            },
        },
        distance = 2.5,
    },
}

Config.GlobalPedOptions = {

}

Config.GlobalVehicleOptions = {
    options = {
        {
            type = "client",
            event = "vehiclekeys:client:GiveKeys",
            icon = "fas fa-key",
            label = "Give Vehicle Keys",
        },
        {
            event = "ds-tuner:VehicleMenu",
            icon = "fas fa-car-alt",
            label = "Check Vehicle",
        },
    },
    distance = 2.5,
}

Config.GlobalObjectOptions = {

}

Config.GlobalPlayerOptions = {
}

Config.Peds = {
	{ -------uWU------
	model = 'a_c_cat_01',
	coords = vector4(-583.79, -1069.46, 21.99, 8.64),
	gender = 'female',
	freeze = false,
	invincible = true,
	blockevents = true,
},
	{ -------uWU------
	model = 'a_c_cat_01',
	coords = vector4(-577.96, -1068.32, 22.34, 54.65),
	gender = 'female',
	freeze = false,
	invincible = true,
	blockevents = true,
},
	{ -------Police------
	model = 's_f_y_cop_01',
	coords = vector4(459.07815, -1017.1, 27.100666, 86.538825),
	gender = 'female',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{ -------ems------
	model = 's_m_y_autopsy_01',
	coords = vector4(326.98535, -561.1459, 27.89684, 171.5191),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},

	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(-112.22, 6471.01, 30.63, 134.18),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(1174.8, 2708.2, 37.09, 178.52),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(-2961.14, 483.09, 14.7, 83.84),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(-1211.9, -331.9, 36.78, 20.07),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(-351.23, -51.28, 48.04, 341.73),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(149.46, -1042.09, 28.37, 335.43),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `ig_bankman`,
	coords = vector4(313.84, -280.58, 53.16, 338.31),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	{  -------Bank------
	model = `cs_fbisuit_01`,
	coords = vector4(241.91836, 226.85668, 105.28719, 156.69313),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-3242.23, 999.97, 11.85, 351.66),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(24.5, -1346.63, 28.60, 273.18),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-706.02, -913.9, 18.35, 86.17),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1486.75, -377.57, 39.20, 132.60),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(812.78125, -781.9375, 25.674957, 273.48199),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
	-- San Andreas Ave Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1221.30, -907.82, 11.40, 34.60),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Carrson Ave
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(372.6, 327.06, 102.55, 258.49),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- North Rockford
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-1819.96, 794.04, 137.10, 126.36),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},

{
	model = 's_m_m_doctor_01',
	coords = vector4(308.89501, -592.4547, 42.284084, 24.616102),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},

-- Great Ocean South
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-3039.89, 584.21, 6.90, 16.15),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Great Ocean Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(-2966.41, 391.62, 14.05, 84.40),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Mirror Park
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1164.72, -323.04, 68.25, 93.92),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Vespucci Boulevard Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1134.32, -983.25, 45.45, 278.23),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Route 68
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(549.24, 2670.37, 41.25, 94.15),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Sandy
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1959.72, 3740.68, 31.40, 297.43),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Sandy Shores Robs Liquor
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1165.25, 2710.80, 38.16, 183.01),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Grape Seed
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1697.8, 4923.14, 41.10, 321.33),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- Great Ocean North
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(1728.33, 6416.21, 34.05, 241.78),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
-- LS Freeway
{
	model = 'mp_m_shopkeep_01',
	coords = vector4(2677.32, 3279.69, 54.30, 323.82),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{---by youtool
	model = 'mp_m_shopkeep_01',
	coords = vector4(2557.28, 380.78, 107.65, 359.83),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
{ --sea world
	model = 'cs_dom',
	coords = vector4(-1686.39, -1072.48, 12.15, 50.1),
	gender = 'male',
	freeze = true,
	invincible = true,
	blockevents = true,
},
}

-------------------------------------------------------------------------------
-- Functions
-------------------------------------------------------------------------------
local function JobCheck() return true end
local function GangCheck() return true end
local function ItemCount() return true end
local function CitizenCheck() return true end

CreateThread(function()
	if not Config.Standalone then
		local DSBase = exports['ds-base']:GetCoreObject()
		local PlayerData = DSBase.Functions.GetPlayerData()

		ItemCount = function(item)
			for _, v in pairs(PlayerData.items) do
				if v.name == item then
					return true
				end
			end
			return false
		end

		JobCheck = function(job)
			if type(job) == 'table' then
				job = job[PlayerData.job.name]
				if job and PlayerData.job.grade.level >= job then
					return true
				end
			elseif job == 'all' or job == PlayerData.job.name then
				return true
			end
			return false
		end

		GangCheck = function(gang)
			if type(gang) == 'table' then
				gang = gang[PlayerData.gang.name]
				if gang and PlayerData.gang.grade.level >= gang then
					return true
				end
			elseif gang == 'all' or gang == PlayerData.gang.name then
				return true
			end
			return false
		end

		CitizenCheck = function(citizenid)
			return citizenid == PlayerData.citizenid or citizenid[PlayerData.citizenid]
		end

		RegisterNetEvent('DSBase:Client:OnPlayerLoaded', function()
			PlayerData = DSBase.Functions.GetPlayerData()
			SpawnPeds()
		end)

		RegisterNetEvent('DSBase:Client:OnPlayerUnload', function()
			PlayerData = {}
			DeletePeds()
		end)

		RegisterNetEvent('DSBase:Client:OnJobUpdate', function(JobInfo)
			PlayerData.job = JobInfo
		end)

		RegisterNetEvent('DSBase:Client:OnGangUpdate', function(GangInfo)
			PlayerData.gang = GangInfo
		end)

		RegisterNetEvent('DSBase:Player:SetPlayerData', function(val)
			PlayerData = val
		end)
	else
		local firstSpawn = false
		AddEventHandler('playerSpawned', function()
			if not firstSpawn then
				SpawnPeds()
				firstSpawn = true
			end
		end)
	end
end)

function CheckOptions(data, entity, distance)
	if distance and data.distance and distance > data.distance then return false end
	if data.job and not JobCheck(data.job) then return false end
	if data.gang and not GangCheck(data.gang) then return false end
	if data.item and not ItemCount(data.item) then return false end
	if data.citizenid and not CitizenCheck(data.citizenid) then return false end
	if data.canInteract and not data.canInteract(entity, distance, data) then return false end
	return true
end