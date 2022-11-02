
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Simon's Gui [BETA]", "RJTheme3")


local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Main Functions")


Section:NewToggle("High jump", "I believe I can fly..", function(state)
    if state then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 400
    else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
end)

Section:NewSlider("Speed", "Normal value - 16. Min 0, Max 500.", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewDropdown("Gravity", "Toggle your gravity.", {"50", "100", "250", "Normal value"}, function(currentOption)
    if currentOption == "Normal value" then
        game.Workspace.Gravity = 200
    end
    if currentOption == "50" then
        game.Workspace.Gravity = 50
    end
    if currentOption == "100" then
         game.Workspace.Gravity = 100
    end
    if currentOption == "250" then
         game.Workspace.Gravity = 250
    end
end)

Section:NewTextBox("Player's height", "Be bigger.", function(text)
     game.Players.LocalPlayer.Character.Humanoid.HipHeight = text
end)


Section:NewKeybind("Infinite Yield", "Open Infinite Yield.", Enum.KeyCode.F, function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Section:NewLabel("musthave#0799 <-- for any problems and etc.")
