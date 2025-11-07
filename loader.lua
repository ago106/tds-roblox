--[[
Hardcore id - 5591597781
Pizza Party id - 5591597781
Default Lobby id - 
Game Lobby - 3260590327
]]

if game.PlaceId == 5591597781 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/tds-roblox/refs/heads/main/Scripts/Gems.lua"))()
elseif game.PlaceId == 3260590327 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ago106/tds-roblox/refs/heads/main/Scripts/Money.lua"))()
else
    game.Players.LocalPlayer:Kick("Execute in Hardcore/Pizza Party")
end
