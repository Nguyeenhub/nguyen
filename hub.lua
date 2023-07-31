local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local X = Material.Load({
	Title = "AFS - NGUYEENHUB",
	Style = 3,
	SizeX = 500,
	SizeY = 350,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(35,35,35)
	}
})
 
local Y = X.New({
	Title = "Main"
})

local A = Y.Button({
	Text = "Selected no Type",
	Callback = function()
		if Type == "Freeze Data" then
for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Pets.Main.Scroll:GetDescendants()) do
if v.Name == "UID" then
local args = {
    [1] = {
        [string.rep("B", 4200000)] = v.Value
    },
    [2] = "AFS_Is_Dogshit",
    [3] = 3
}

wait(0)

warn("sex")

game.StarterGui:SetCore("SendNotification", {
    Title = "Freeze Data";
    Text = "Success!";
    Icon = "";
    Duration = "2";
})

game:GetService("ReplicatedStorage").Remote.SaveTeam:FireServer(unpack(args))
TextField:SetText("Started")
		elseif Type == "Un Freezedata" then
for i = 1,100 do
local args = {
    [1] = i
}

game:GetService("ReplicatedStorage").Remote.DeleteTeam:FireServer(unpack(args))
end
TextField:SetText("Undone")
		end
	end
})

local D = Y.Dropdown({
	Text = "Type",
	Callback = function(Value)
		getgenv().Type = Value
	end,
	Options = {
		"Freeze Data",
		"Un Freezedata"
	}
})

local AE = Y.Button({
	Text = "ZALO 0866034644",
	Callback = function()
		print("0866034644")
	end
})

local AE2 = Y.Button({
	Text = "Copy Link Facebook",
	Callback = function()
		setclipboard("https://www.facebook.com/profile.php?id=100070967305494")
	end
})


getgenv().TextField = Y.TextField({
  Text = "Status",
  Type = "Default"
})

while task.wait() do
if Type then
A:SetText(Type)
end
end