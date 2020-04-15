RegisterCommand("reporttoadmin",function (source,args)
    local argsstring = table.concat(args," ")
    TriggerServerEvent("adminreport:report",source,argsstring)

end)