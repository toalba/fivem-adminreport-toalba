ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("adminreport:report")
AddEventHandler("adminreport:report",function (argsstring)
    local player=GetPlayerName(source)
    local endmessage="Spieler".." ~g~"..player.."["..source.."]~s~".." reportet:".." ".. argsstring
    local xPlayer=ESX.GetPlayerFromId(source)
    xPlayer.triggerEvent('esx:showNotification',endmessage)
	local xPlayers = ESX.GetPlayers()
	for i=1, #xPlayers, 1 do
	    local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if (xPlayer.getGroup() == 'admin') or (xPlayer.getGroup() == 'superadmin') or (xPlayer.getGroup() == 'mod')then
            xPlayer.triggerEvent('esx:showNotification',endmessage)
        end
	end
end)
