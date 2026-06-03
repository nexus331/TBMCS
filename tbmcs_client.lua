-- Tactical Ballistic Missile Control Software
-- Tethoris Ministry of Defence and Ministry of Information Technology 2026

-- Software Initialization
modem_location = peripheral.find("modem", rednet.open)


function test_mode()
    print("Entering Test Mode....")
    sleep(1)
    print("Launching Missile in 3 seconds...")
    sleep(1)
    rednet.broadcast("MISSILE", tbmcs)
end


-- Main Program
print("TACTICAL BALLISTIC MISSILE CONTROL SYSTEM")
print("Developed by M.O.D and M.I.T 2026")
print("")
print("Select Option")
print("1: Test Missile")
print("2: Exit")

io.write("Enter your option: ")
local option = io.read()
if option == "1" then
    test_mode()
    elseif option == "2" then
        exit()
end