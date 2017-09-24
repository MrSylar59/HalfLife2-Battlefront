local csRoundStatus = 0

net.Receive("UpdateRoundStatus", function(len)
  csRoundStatus = net.ReadInt(4)
end)

function GetRoundStatus()
  return csRoundStatus
end
