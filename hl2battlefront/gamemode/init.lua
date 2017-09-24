AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function GM:PlayerConnect(name, ip)
    print("Player ".. name .." connected with IP ".. ip ..".")
end

function GM:PlayerInitialSpawn(ply)
    print("Player ".. ply:Name() .." just spawned!")
end

function GM:PlayerDisconnected(ply)
    print("Player ".. ply:Name() .." disconnected from the server.")
end
