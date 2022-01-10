local rankUrl = "" --Place the Wesite URL inside of the quotes
local rs = game.ReplicatedStorage.GroupRankEvent

function rankUser(UserId, RoleId)
	game:GetService("HttpService"):GetAsync(rankUrl .. "ranker?userid=" .. UserId.. "&rank=" .. RoleId)
end

rs.OnServerEvent:Connect(function(player, UserText, RoleText)

    UserText = game.Players:GetUserIdFromNameAsync(UserText)

    local UserId = UserText
    local RoleId = RoleText

    rankUser(UserId, RoleId)

end)