ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("admintools:report")
AddEventHandler("admintools:report",function (argsstring)
    local player=GetPlayerName(source)
    local endmessage="Spieler".." ~g~"..player.."["..source.."]~s~".." reportet:".." ".. argsstring
    local xPlayer=ESX.GetPlayerFromId(source)
    xPlayer.triggerEvent('esx:showNotification',endmessage)
    TriggerEvent('admintools:showupmessage',1,endmessage)
end)

RegisterServerEvent('admintools:showupmessage')
AddEventHandler('admintools:showupmessage',function(grouplevel,message)
    local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if grouplevel == 1 then
            if (xPlayer.getGroup() == 'admin') or (xPlayer.getGroup() == 'superadmin') or (xPlayer.getGroup() == 'mod')then
                xPlayer.triggerEvent('esx:showNotification',message)
            end
        elseif grouplevel == 2 then
            if (xPlayer.getGroup() == 'admin') or (xPlayer.getGroup() == 'superadmin')then
                xPlayer.triggerEvent('esx:showNotification',message)
            end
        elseif grouplevel== 3 then
            if(xPlayer.getGroup() == 'superadmin')then
                xPlayer.triggerEvent('esx:showNotification',message)
            end
        end
	end
end)
