lan0 = peripheral.find("modem", rednet.open)


function light_on()
    redstone.setOutput("back", true)
    sleep(1)
    redstone.setOutput("back", false)
end

function light_off()
    redstone.setOutput("back", true)
    sleep(1)
    redstone.setOutput("back", false)
end

function wait_command()
    id, message, protocol = rednet.receive("wlan")
    if message == "light_on" then
        print("DEBUG:", message)
        light_on()
    elseif message == "light_off" then
        print("DEBUG:", message)
        light_off()
    end
end

print("Waiting for command...")
while true do
wait_command()
end