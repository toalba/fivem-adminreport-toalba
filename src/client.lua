RegisterCommand("report",function (source,args)
    local argsstring = table.concat(args," ")
    TriggerServerEvent("admintools:report",argsstring)
end)