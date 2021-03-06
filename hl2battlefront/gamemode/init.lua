-- Base includes
AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

-- Other includes
AddCSLuaFile("lib/round/cl_round.lua")
AddCSLuaFile("lib/lobby/cl_lobby.lua")

include("lib/round/sv_round.lua")
include("lib/lobby/sv_lobby.lua")

function GM:PlayerConnect(name, ip)
    print("Player ".. name .." connected with IP ".. ip ..".")
end

function GM:PlayerInitialSpawn(ply)
    print("Player ".. ply:Name() .." just spawned!")
end

function GM:PlayerDisconnected(ply)
    print("Player ".. ply:Name() .." disconnected from the server.")
end
