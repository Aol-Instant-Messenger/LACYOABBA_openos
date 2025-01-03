serialization = require("serialization")

title = "LACYOABBAWYCYOOTSOKAAVN"

function invalid()
    print("\nYou entered an invalid character.\nIt has costed you this run.\n")
end

function exists(file)
  -- some error codes:
  -- 13 : EACCES - Permission denied
  -- 17 : EEXIST - File exists
  -- 20	: ENOTDIR - Not a directory
  -- 21	: EISDIR - Is a directory
  --
  local isok, errstr, errcode = os.rename(file, file)
  if isok == nil then
     if errcode == 13 then 
        -- Permission denied, but it exists
        return true
     end
     return false
  end
  return true
end

function isdir(path)
  return file_exists(path .. "/")
end

local char = {
    unk = "???: ",
    MC = "Me: ",
    lead = "Counselor Baldur: ",
    S = "Madeline: ",
    T = "Natalie: ",
    E = "Eleanor: ",
    A = "Cordelia: ",
    M = "Violet: ",
    narrator = ": ",
}
local file = assert(io.open("/usr/LACYOABBA/characters", "w"))
file:write(serialization.serialize(char))
file:close()

local var = {
    meetS = false,
    meetT = false,
    meetE = false,
    meetA = false,
    meetM = false,
    sciRoute = false,
    techRoute = false,
    engRoute = false,
    artRoute = false,
    mathRoute = false,
    routeID = 6,
    sciInterest = false,
    sciUnsure = false,
    sciDisinterest = false,
    techInterest = false,
    techUnsure = false,
    techDisinterest = false,
    engInterest = false,
    engUnsure = false,
    engDisinterest = false,
    artInterest = false,
    artUnsure = false,
    artDisinterest = false,
    artnot_met = false,
    artIndecisive = false,
    artPerv = false,
    mathInterest = false,
    mathUnsure = false,
    mathDisinterest = false,
}
local file = assert(io.open("/usr/LACYOABBA/save", "w"))
file:write(serialization.serialize(var))
file:close()

local persistent = {
    sciEver = false,
    techEver = false,
    engEver = false,
    artEver = false,
    mathEver = false,
    playthrough = 0,
    beaten = 0,
    started = 0,
    firstChosen = "N/A",
    ending1 = false,
    ending2 = false,
    enging3 = false,
    ending4 = false,
    ending5 = false,
    ending6 = false,
    ending7 = false,
    ending8 = false,
    ending9 = false,
    ending10 = false,
}
if exists("/usr/LACYOABBA/persistent") then
    local file = io.open("/usr/LACYOABBA/persistent", "r")
    persistent = serialization.unserialize(file.readAll())
    file.close()
else
    local file = assert(io.open("/usr/LACYOABBA/persistent", "w"))
    file:write(serialization.serialize(persistent))
    file:close()
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
