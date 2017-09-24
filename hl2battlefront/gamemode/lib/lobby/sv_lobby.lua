util.AddNetworkString("OpenLobby")

function EnterLobby(ply)
  net.Start("OpenLobby")
  net.Send(ply)
end

hook.Add("PlayerInitialSpawn", "hkOpenLobby", function(ply)
  EnterLobby(ply)
end)
