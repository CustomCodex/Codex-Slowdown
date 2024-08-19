ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local tireBurstLogged = false

local function KmHToMS(kmh)
    return kmh / 3.6
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(Config.CheckFrequency)

        local playerPed = GetPlayerPed(-1)
        local vehicle = GetVehiclePedIsIn(playerPed, false)

        if vehicle ~= 0 then
            local anyTireBurst = false

            for i = 0, 7 do
                if IsVehicleTyreBurst(vehicle, i, false) then
                    anyTireBurst = true

                    -- Slow down the vehicle if any tire is burst
                    local currentSpeed = GetEntitySpeed(vehicle)
                    local slowedSpeed = KmHToMS(Config.SlowdownSpeed)

                    if currentSpeed > slowedSpeed then
                        SetVehicleForwardSpeed(vehicle, slowedSpeed)
                    end
                end
            end

            if anyTireBurst and not tireBurstLogged then
                -- Log the first tire burst event and prevent further logs
                tireBurstLogged = true
                TriggerServerEvent('codex-slowdown:logTireBurst')
            elseif not anyTireBurst then
                -- Reset the tire burst log state if all tires are fixed
                tireBurstLogged = false
            end
        else
            -- Reset the tire burst log state when the player exits the vehicle
            tireBurstLogged = false
        end
    end
end)
