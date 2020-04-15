RegisterServerEvent("adminreport:report")
AddEventHandler("adminreport:report",function (source, argsstring)
    local playernum = GetNumPlayerIndices()
    local endmessage= GetPlayerName(source).." ".."Reportet:".. argsstring
    for i = 1, playernum, 1 do
        if IsPlayerAceAllowed(i) then
            TriggerClientEvent('esx:showNotification', i,endmessage)
        end
    end

end)