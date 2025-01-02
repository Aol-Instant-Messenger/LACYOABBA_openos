title = "LACYOABBAWYCYOOTSOKAAVN"

function invalid()
    print("\nYou entered an invalid character.\nIt has costed you this run.\n")
end

-- clear screen
os.execute("clear")

-- print welcome message
print("Welcome to " .. title)
print("Made by Phleggmboi")

os.execute("sleep 0.5")

-- REMOVE
print("\nYou are in a room that you don't recognize, accompanied only by a brick at your left side. You've been gagged and cannot speak, but your arms and legs can move freely.\n")
os.execute("sleep 1")
-- REMOVE
print("Do you:\n Eat the brick[1]\n Tell the brick that it\'s stupid[2] \n")

ans = io.read()
dead = false

if ans == "1" then 
    print("\nYou died. The end.")
elseif ans == "2" then 
    print("\nThe brick is very offended.")
else 
    invalid()
end
