local function CustomAlert(source, data)
    local coords = data.coords or vec3(0.0, 0.0, 0.0)
    local dispatchData = {
        message = data.message or "", -- Title of the alert
        codeName = data.dispatchCode or "NONE", -- Unique name for each alert
        code = data.code or '10-80', -- Code that is displayed before the title
        icon = data.icon or 'fas fa-question', -- Icon that is displaed after the title
        priority = data.priority or 2, -- Changes color of the alert ( 1 = red, 2 = default )
        coords = coords, -- Coords of the player
        gender = data.gender, -- Gender of the player
        street = GetStreetAndZone(source, coords), -- Street of the player
        camId = data.camId or nil, -- Cam ID ( for heists )
        color = data.firstColor or nil, -- Color of the vehicle
        callsign = data.callsign or nil, -- Callsigns
        name = data.name or nil, -- Name of either officer/ems or a player
        vehicle = data.model or nil, -- Vehicle name
        plate = data.plate or nil, -- Vehicle plate
        alertTime = data.alertTime or nil, -- How long it stays on the screen in seconds
        doorCount = data.doorCount or nil, -- How many doors on vehicle
        automaticGunfire = data.automaticGunfire or false, -- Automatic Gun or not
        alert = {
            radius = data.radius or 0, -- Radius around the blip
            sprite = data.sprite or 1, -- Sprite of the blip
            color = data.color or 1, -- Color of the blip
            scale = data.scale or 0.5, -- Scale of the blip
            length = data.length or 2, -- How long it stays on the map
            sound = data.sound or "Lose_1st", -- Alert sound
            sound2 = data.sound2 or "GTAO_FM_Events_Soundset", -- Alert sound
            offset = data.offset or false, -- Blip / radius offset
            flash = data.flash or false -- Blip flash
        },
        jobs = data.jobs or { 'leo' }
    },
    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end

exports('CustomAlert', CustomAlert)

local function VehicleTheft(source, vehicle)
    local coords = ps.getEntityCoords(source)
    local vehicle = GetVehicleData(source, NetworkGetNetworkIdFromEntity(vehicle))

    local dispatchData = {
        message = locale('vehicletheft'),
        codeName = 'vehicletheft',
        code = '10-35',
        icon = 'fas fa-car-burst',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(source, coords),
        heading = GetPlayerHeading(source),
        vehicle = vehicle.name,
        plate = vehicle.plate,
        color = vehicle.color,
        class = vehicle.class,
        doors = vehicle.doors,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('VehicleTheft', VehicleTheft)

local function PrisonBreak(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('prisonbreak'),
        codeName = 'prisonbreak',
        code = '10-90',
        icon = 'fas fa-vault',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('PrisonBreak', PrisonBreak)

local function StoreRobbery(source, camId)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('storerobbery'),
        codeName = 'storerobbery',
        code = '10-90',
        icon = 'fas fa-store',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('StoreRobbery', StoreRobbery)

local function FleecaBankRobbery(source, camId)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('fleecabank'),
        codeName = 'bankrobbery',
        code = '10-90',
        icon = 'fas fa-vault',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('FleecaBankRobbery', FleecaBankRobbery)

local function PaletoBankRobbery(source, camId)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('paletobank'),
        codeName = 'paletobankrobbery',
        code = '10-90',
        icon = 'fas fa-vault',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('PaletoBankRobbery', PaletoBankRobbery)

local function PacificBankRobbery(source, camId)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('pacificbank'),
        codeName = 'pacificbankrobbery',
        code = '10-90',
        icon = 'fas fa-vault',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('PacificBankRobbery', PacificBankRobbery)

local function VangelicoRobbery(source, camId)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('vangelico'),
        codeName = 'vangelicorobbery',
        code = '10-90',
        icon = 'fas fa-gem',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        camId = camId,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('VangelicoRobbery', VangelicoRobbery)

local function HouseRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('houserobbery'),
        codeName = 'houserobbery',
        code = '10-90',
        icon = 'fas fa-house',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('HouseRobbery', HouseRobbery)

local function YachtHeist(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('yachtheist'),
        codeName = 'yachtheist',
        code = '10-65',
        icon = 'fas fa-house',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('YachtHeist', YachtHeist)

local function DrugSale(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('drugsell'),
        codeName = 'suspicioushandoff',
        code = '10-13',
        icon = 'fas fa-tablets',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('DrugSale', DrugSale)

local function SuspiciousActivity(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('susactivity'),
        codeName = 'susactivity',
        code = '10-66',
        icon = 'fas fa-tablets',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('SuspiciousActivity', SuspiciousActivity)

local function CarJacking(source, vehicle)
    local coords = ps.getEntityCoords(source)
    local vehicle = GetVehicleData(source, NetworkGetNetworkIdFromEntity(vehicle))

    local dispatchData = {
        message = locale('carjacking'),
        codeName = 'carjack',
        code = '10-35',
        icon = 'fas fa-car',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(source, coords),
        heading = GetPlayerHeading(source),
        vehicle = vehicle.name,
        plate = vehicle.plate,
        color = vehicle.color,
        class = vehicle.class,
        doors = vehicle.doors,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('CarJacking', CarJacking)

local function OfficerBackup(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('officerbackup'),
        codeName = 'officerbackup',
        code = '10-32',
        icon = 'fas fa-skull',
        priority = 1,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        name = ps.getPlayerName(source),
        callsign = ps.getCharInfo(source, 'callsign'),
        alertTime = 10,
        jobs = { 'ems', 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('OfficerBackup', OfficerBackup)

RegisterNetEvent("ps-dispatch:client:officerbackup", function() OfficerBackup() end)

local function OfficerInDistress(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('officerdistress'),
        codeName = 'officerdistress',
        code = '10-99',
        icon = 'fas fa-skull',
        priority = 1,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        name = ps.getPlayerName(source),
        callsign = ps.getCharInfo(source, 'callsign'),
        alertTime = 10,
        jobs = { 'ems', 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('OfficerInDistress', OfficerInDistress)

local function ArtGalleryRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('artgalleryrobbery'),
        codeName = 'artgalleryrobbery',
        code = '10-90',
        icon = 'fas fa-brush',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }
    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('ArtGalleryRobbery', ArtGalleryRobbery)

local function HumaneRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('humanelabsrobbery'),
        codeName = 'humanelabsrobbery',
        code = '10-90',
        icon = 'fas fa-flask-vial',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }
    TriggerEvent('ps-dispatch:server:notify', dispatchData)

end
exports('HumaneRobbery', HumaneRobbery)

local function TrainRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('trainrobbery'),
        codeName = 'trainrobbery',
        code = '10-90',
        icon = 'fas fa-train',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }
    TriggerEvent('ps-dispatch:server:notify', dispatchData)

end
exports('TrainRobbery', TrainRobbery)

local function VanRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('vanrobbery'),
        codeName = 'vanrobbery',
        code = '10-90',
        icon = 'fas fa-van-shuttle',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }
    TriggerEvent('ps-dispatch:server:notify', dispatchData)

end
exports('VanRobbery', VanRobbery)

local function UndergroundRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('undergroundrobbery'),
        codeName = 'undergroundrobbery',
        code = '10-90',
        icon = 'fas fa-person-rays',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }
    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('UndergroundRobbery', UndergroundRobbery)

local function DrugBoatRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('drugboatrobbery'),
        codeName = 'drugboatrobbery',
        code = '10-65',
        icon = 'fas fa-ship',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('DrugBoatRobbery', DrugBoatRobbery)

local function UnionRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('unionrobbery'),
        codeName = 'unionrobbery',
        code = '10-90',
        icon = 'fas fa-truck-field',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('UnionRobbery', UnionRobbery)

local function CarBoosting(source, vehicle)
    local coords = ps.getEntityCoords(source)
    local vehicle = GetVehicleData(source, NetworkGetNetworkIdFromEntity(vehicle))
    local dispatchData = {
        message = locale('carboosting'),
        codeName = 'carboosting',
        code = '10-50',
        icon = 'fas fa-car',
        priority = 2,
        coords = coords,
        street = GetStreetAndZone(source, coords),
        heading = GetPlayerHeading(source),
        vehicle = vehicle.name,
        plate = vehicle.plate,
        color = vehicle.color,
        class = vehicle.class,
        doors = vehicle.doors,
        alertTime = nil,
        jobs = { 'leo' }
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('CarBoosting', CarBoosting)

local function SignRobbery(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('signrobbery'),
        codeName = 'signrobbery',
        code = '10-10',
        icon = 'fab fa-artstation',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo'}
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('SignRobbery', SignRobbery)

local function BobcatSecurityHeist(source)
    local coords = ps.getEntityCoords(source)

    local dispatchData = {
        message = locale('bobcatsecurity'),
        codeName = 'bobcatsecurityheist',
        code = '10-90',
        icon = 'fa-solid fa-building-shield',
        priority = 2,
        coords = coords,
        gender = GetPlayerGender(source),
        street = GetStreetAndZone(source, coords),
        alertTime = nil,
        jobs = { 'leo'}
    }

    TriggerEvent('ps-dispatch:server:notify', dispatchData)
end
exports('BobcatSecurityHeist', BobcatSecurityHeist)