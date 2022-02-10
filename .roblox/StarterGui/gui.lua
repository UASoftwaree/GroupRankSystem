local UserText = script.Parent.Parent.UserText
local RoleText = script.Parent.Parent.RoleText
local promoteButton = script.Parent
local rs = game.ReplicatedStorage.GroupRankEvent -- Enter where the event is located

promoteButton.MouseButton1Click:Connect(function()
    rs:FireServer(UserText.Text, RoleText.Text)
end)
