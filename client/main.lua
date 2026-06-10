



Citizen.CreateThread(function()

	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)




function changeDot(t)
	TriggerEvent("noreddot:setdot", t)
end

RegisterCommand(Config.Command, function(source, args, user)
	SetNuiFocus(true, true)
	SendNUIMessage({action = 'enable'})

	if Config.Debug then
		print(('[rsx_crosshair] Opened crosshair menu with /%s'):format(Config.Command))
	end
end, false)

RegisterNUICallback('onCloseMenu', function()
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected1', function()
	changeDot(1)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected2', function()
	changeDot(2)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected3', function()
	changeDot(3)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected4', function()
	changeDot(4)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected5', function()
	changeDot(5)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected6', function()
	changeDot(6)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected7', function()
	changeDot(7)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected8', function()
	changeDot(8)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected9', function()
	changeDot(9)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected10', function()
	changeDot(10)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected11', function()
	changeDot(11)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('selected12', function()
	changeDot(12)
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false)
end)

RegisterNUICallback('closemenu', function()
	SendNUIMessage({action = 'disable'})
	SetNuiFocus(false, false)
end)