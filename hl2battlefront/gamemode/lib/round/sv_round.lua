-- 0 = in lobby ; 1 = in game
local roundStatus = 0

util.AddNetworkString("UpdateRoundStatus")

function StartRound()
  roundStatus = 1
  UpdateCSRoundStatus()

  print("The round has begun!")
end

function EndRound()
  roundStatus = 0
  UpdateCSRoundStatus()

  print("The round has ended!")
end

function GetRoundStatus()
  return roundStatus
end

-- Broadcast to all connected player the round status
function UpdateCSRoundStatus()
  net.Start("UpdateRoundStatus")
    net.WriteInt(roundStatus, 4)
  net.Broadcast()
end
