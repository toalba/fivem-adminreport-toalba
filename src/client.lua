RegisterCommand("report",function (source,args)
    local argsstring = table.concat(args," ")
    TriggerServerEvent("adminreport:report",argsstring)
end)