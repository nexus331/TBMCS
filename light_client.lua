lan0 = peripheral.find("modem", rednet.open)

function light_on()
    rednet.broadcast("light_on", "lan")
end

function light_off()
    rednet.broadcast("light_off", "lan")
end