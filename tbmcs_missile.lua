-- Tactical Ballistic Missile Control Software
-- Tethoris Ministry of Defence and Ministry of Information Technology 2026

-- Software Initialization
modem_location = peripheral.find("modem", rednet.open)


function wait_command()
    print("Waiting command....")
    while true do
        id, message, protocol = rednet.receive(tbmcs)
        print("DEBUG:", message)
        if message == "MISSILE" then
            redstone.setOutput("bottom", true)
            sleep(0.4)
            redstone.setOutput("bottom", false)
        end
    end
end


-- Main Program
print("TACTICAL BALLISTIC MISSILE CONTROL SYSTEM")
print("Developed by M.O.D and M.I.T 2026")
print("")
wait_command()
