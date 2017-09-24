util.AddNetworkString("OpenLobby")
util.AddNetworkString("EnterGame")

function EnterLobby(ply)
  net.Start("OpenLobby")
  net.Send(ply)
end

hook.Add("PlayerInitialSpawn", "hkOpenLobby", function(ply)
  EnterLobby(ply)
end)

net.Receive("EnterGame", function(len, ply)
  -- We attribute the correct teams
  local team = net.ReadInt(4)

  if (team == 0) then
    print("Player " .. ply:Name() .. " joined the rebels!")
  else
    print("Player " .. ply:Name() .. " joined the combines!")
  end

  -- We start the game if we have at least one player in game
  if (player.GetCount() >= 1 and GetRoundStatus() == 0) then
    StartRound()
  end
end)
