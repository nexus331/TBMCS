lan0 = peripheral.find("modem", rednet.open)

function light_on()
    print("Turning on lights...")
    rednet.broadcast("light_on", "lan")
end

function light_off()
    print("Turning off lights...")
    rednet.broadcast("light_off", "lan")
end

print("FACILITY LIGHT CONTROL")
print("1. ON")
print("2. OFF")
io.write("Enter option:")
option = io.read()

if option == "1" then
    light_on()
elseif option == "2" then
    light_off()
end