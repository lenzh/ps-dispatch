function GetStreetAndZone(source, coords)
    local street = ps.callback('ps-dispatch:clientCb:GetStreetAndZone', source, coords)
    return tostring(street)
end

function GetPlayerGender(source)
    local gender = locale('male')

    if ps.getCharInfo(source, 'gender') == 1 then
        gender = locale('female')
    end
    return gender
end

function GetPlayerHeading(source)
    local heading = GetEntityHeading(GetPlayerPed(source))

    if heading >= 315 or heading < 45 then
        return locale('north')
    elseif heading >= 45 and heading < 135 then
        return locale('west')
    elseif heading >= 135 and heading < 225 then
        return locale('south')
    elseif heading >= 225 and heading < 315 then
        return locale('east')
    end
end
function GetVehicleData(source, vehicle)
    local vehData = ps.callback('ps-dispatch:clientCb:GetVehicleData', source, vehicle)
    return vehData
end

function GetWeaponName(source)
    local currentWeapon = GetSelectedPedWeapon(GetPlayerPed(source))
    return weaponTable[currentWeapon] or "Unknown"
end