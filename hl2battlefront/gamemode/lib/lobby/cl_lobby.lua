function OpenLobby()
  local frame = vgui.Create("DFrame")
  frame:SetSize(ScrW()*.9, ScrH()*.9)
  frame:Center()
  frame:SetVisible(true)
  frame:ShowCloseButton(false)
  frame:SetDraggable(false)
  frame:SetTitle("")
  frame.Paint = function(s, w, h)
    draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 150))
  end
  frame:MakePopup()

  local message = vgui.Create("DLabel", frame)
  message:AlignTop(25)
  message:CenterHorizontal(0.5)
  message:SetText("Choose your team")
  message:SizeToContents()

  local rebelButton = vgui.Create("DButton", frame)
  rebelButton:SetText("Rebels")
  rebelButton:SetPos(250, 100)
  rebelButton:SetSize(200, 25)
  rebelButton.DoClick = function()
    net.Start("EnterGame")
      net.WriteInt(0, 4)
      print("You joined the rebels!")
    net.SendToServer()

    frame:Close()
  end

  local combineButton = vgui.Create("DButton", frame)
  combineButton:SetText("Combines")
  combineButton:SetPos(450, 100)
  combineButton:SetSize(200, 25)
  combineButton.DoClick = function()
    net.Start("EnterGame")
      net.WriteInt(1, 4)
      print("You joined the combines!")
    net.SendToServer()

    frame:Close()
  end
end

net.Receive("OpenLobby", OpenLobby)
