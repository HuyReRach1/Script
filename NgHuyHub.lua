print("NgHuy Hub")
toclipboard("https://discord.gg/b4Myfv76UU")

repeat task.wait() until game:IsLoaded()
local TablePlace = {13772394625,14915220621,14732610803,15264892126}
if table.find(TablePlace,game.PlaceId) then 
   if getgenv().Hub then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NgHuyZzZ/nghuyzzz.github.io/main/scripts/BladeBall.lua"))()
   else
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NgHuyZzZ/nghuyzzz.github.io/main/scripts/BladeBall.lua"))()
   end
elseif game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NgHuyZzZ/nghuyzzz.github.io/main/scripts/BloxFruits.lua"))()
elseif game.PlaceId == 3101667897 then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NgHuyZzZ/nghuyzzz.github.io/main/scripts/LOS.lua"))()
else
    game.Players.LocalPlayer:Kick("Not Support")
end