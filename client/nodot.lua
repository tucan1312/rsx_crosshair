local IsActive = false
local crosshairType = Config.DefaultCrosshair or 12

function ManageReticle()
    if Config.EnableCustomCrosshair == false then
        if IsActive then
            SendNUIMessage({
                showNoRedDot = false,
                type = crosshairType
            })

            IsActive = false
        end

        return
    end

    local ped = PlayerPedId()

    if not DoesEntityExist(ped) then

        return
    end

    if IsEntityDead(ped) then

        return
    end

    if IsPlayerFreeAiming(PlayerId()) then
        if not IsActive then

            SendNUIMessage({
                showNoRedDot = true,
                type = crosshairType
            })

            IsActive = true
        end
    else
        if IsActive then

            SendNUIMessage({
                showNoRedDot = false,
                type = crosshairType
            })

            IsActive = false
        end
    end
end

RegisterNetEvent("noreddot:setdot")
AddEventHandler("noreddot:setdot", function(id)

    local selectedId = tonumber(id)

    if not selectedId or selectedId < 1 or selectedId > 12 then
        if Config.Debug then
            print(('[rsx_crosshair] Invalid crosshair id: %s'):format(tostring(id)))
        end

        return
    end

    crosshairType = selectedId

    if Config.Debug then
        print(('[rsx_crosshair] Crosshair changed to type %s'):format(crosshairType))
    end
end)

Citizen.CreateThread(function()
    Wait(300)



    for i = 1, 12 do

        SendNUIMessage({
            showNoRedDot = false,
            type = i
        })
    end



    while true do
        local Ped = PlayerId()
        local PlayerPed = PlayerPedId()

        Citizen.InvokeNative(0x4CC5F2FC1332577F, 1058184710)
        Citizen.InvokeNative(0x4CC5F2FC1332577F, -66088566)

        if IsPlayerFreeAiming(Ped) and IsPedWeaponReadyToShoot(PlayerPed) then


            if firstperson ~= true then
                weapon, weponhash = GetCurrentPedWeapon(PlayerPed, true)



                isBow = GetHashKey("WEAPON_BOW")

                if weponhash ~= isBow then


                    Citizen.InvokeNative(0x4CC5F2FC1332577F, 0xBB47198C)

                end

            end
        else


            Citizen.InvokeNative(0x1CFB749AD4317BDE)
            Citizen.InvokeNative(0x4CC5F2FC1332577F, 0xBB47198C)
        end

        ManageReticle()

        Citizen.Wait(0)
    end
end)