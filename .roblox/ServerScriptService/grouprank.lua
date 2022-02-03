local rankUrl = "" --Place the Wesite URL inside of the quotes
local rs = game.ReplicatedStorage.GroupRankEvent
local groupid = 1 -- Enter your group id here

function rankUser(UserId, RoleId)
	game:GetService("HttpService"):GetAsync(rankUrl .. "ranker?userid=" .. UserId.. "&rank=" .. RoleId)
end

game.Players.PlayerAdded:Connect(function(player)  
    if player:GetRankInGroup(groupid) >= 100 then
        rs.OnServerEvent:Connect(function(player, UserText, RoleText)

            UserText = game.Players:GetUserIdFromNameAsync(UserText)

            local UserId = UserText
            local RoleId = RoleText

            rankUser(UserId, RoleId)

        end)
    end
end)