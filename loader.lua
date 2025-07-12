-- ZcaalzX Loader Uji Coba - Versi Ringan

repeat task.wait() until game:IsLoaded()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Intro Awal
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "ZcaalzIntro"
gui.ResetOnSpawn = false

local label = Instance.new("TextLabel", gui)
label.Size = UDim2.new(1, 0, 1, 0)
label.BackgroundTransparency = 1
label.Text = "ZcaalzX"
label.TextColor3 = Color3.new(1, 1, 1)
label.TextStrokeTransparency = 0
label.TextScaled = true
label.Font = Enum.Font.Arcade

wait(2)
label.Text = ""
local greetingText = "Selamat datang, " .. LocalPlayer.Name .. "! Script sedang dimuat..."
for i = 1, #greetingText do
	label.Text = string.sub(greetingText, 1, i)
	task.wait(0.03)
end

wait(2)
gui:Destroy()

-- GUI Placeholder
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.Name = "ZcaalzX_GUI"

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 250)
Frame.Position = UDim2.new(0.5, -150, 0.5, -125)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 2

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "🛠️ ZcaalzX - Test Menu"
Title.TextColor3 = Color3.new(1,1,1)
Title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Title.Font = Enum.Font.GothamBold
Title.TextScaled = true

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(1, -20, 0, 40)
Button.Position = UDim2.new(0, 10, 0, 60)
Button.Text = "✅ Tombol Contoh"
Button.TextScaled = true
Button.Font = Enum.Font.Gotham
Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.MouseButton1Click:Connect(function()
	Title.Text = "Tombol ditekan!"
end)
