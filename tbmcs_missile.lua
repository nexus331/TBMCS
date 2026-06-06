-- Tactical Ballistic Missile Control Software
-- Tethoris Ministry of Defence and Ministry of Information Technology 2026

-- Software Initialization
modem_location = peripheral.find("modem", rednet.open)

redstone.setOutput("back", true)
function wait_command()
    print("Waiting command....")
    while true do
        id, message, protocol = rednet.receive(tbmcs)
        print("DEBUG:", message)
        if message == "MISSILE" then
        -- FLIGHT GUIDANCE
        
            redstone.setOutput("bottom", true)
            sleep(4)
            redstone.setOutput("right", true)
            sleep(0.8)
            redstone.setOutput("right", false)
            sleep(3)
            redstone.setOutput("bottom", true)
            redstone.setOutput("left", true)
            sleep(2)
            redstone.setOutput("left", false)
            redstone.setOutput("bottom", true)
            redstone.setOutput("bottom", false)
            sleep(0.5)
            
            -- WARHEAD 
            redstone.setOutput("back", false)
            print("WARHEAD DETACHED!")
            sleep(0.3)
            redstone.setOutput("left", true)
            redstone.setOutput("bottom",true)
            sleep(4)
            redstone.setOutput("bottom", false)
            redstone.setOutput("left",false)
            redstone.setOutput("back", true)
        end
    end
end


-- Main Program
print("TACTICAL BALLISTIC MISSILE CONTROL SYSTEM")
print("Developed by M.O.D and M.I.T 2026")
print("")
wait_command()
