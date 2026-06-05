-- ROUTER FIRMWARE
-- TNNS NETWORK SOFTWARE V0.1

-- HARDWARE INITIALIZATION

rout0 = peripheral.find("modem", rednet.open)

function wait_packet()
    id, message, protocol = rednet.receive("lan")
    print("DEBUG:", message)
    rednet.broadcast(message, "wlan")
end

print("TNNS ROUTER OPERATING SYSTEM")
print("Firmware Version: 0.1")

print("Waiting for packets...")

while true do
wait_packet()
end