do
    if CoreGui:FindFirstChild("AimCentralUI") then
        CoreGui:FindFirstChild("AimCentralUI"):Destroy()
    end
end

local library = {}

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:getService("TweenService")
local player = game:GetService("Players").Name

function Tween(instance, duration, properties, waituntildone, optionalproperties)
	local waituntildone = waituntildone or false
	local optionalproperties = optionalproperties or {Enum.EasingDirection.Out, Enum.EasingStyle.Linear}
	local Tween = TweenService:Create(instance, TweenInfo.new(duration), properties, unpack(optionalproperties))
	Tween:Play()
	if waituntildone == true then
		Tween.Completed:Wait()
		return true
	end
end

function library:CreateWindow()

	local AimCentralUI = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Pages = Instance.new("Folder")
	local MainFrameCorner = Instance.new("UICorner")
	local LeftFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ACLogo = Instance.new("ImageLabel")
	local Seperator = Instance.new("Frame")
	local TabHolder = Instance.new("ScrollingFrame")
	local TabHolderList = Instance.new("UIListLayout")
	
	local NotificationText = Instance.new("TextLabel")
	
	local Welcome = Instance.new("TextLabel")
	
	
	
	local function EFWI_fake_script() -- Welcome.LocalScript 
		local script = Instance.new('LocalScript', Welcome)

		--//SHADZYDEV//--
		local r = {
			Color3.fromRGB(254, 0, 0);		--red
			Color3.fromRGB(255, 127, 0);	--orange
			Color3.fromRGB(255, 221, 1);	--yellow
			Color3.fromRGB(0, 200, 0);		--green
			Color3.fromRGB(0, 160, 199);	--light blue
			Color3.fromRGB(0, 55, 230);		--dark blue
			Color3.fromRGB(129, 16, 210)}	--purple
		local info = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
		script.Parent.TextColor3 = r[1]
		local i = 1
		while true do
			local tween = game:GetService("TweenService"):Create(script.Parent, info, {
				TextColor3 = r[i]})
			tween:Play()
			repeat wait() until tween.Completed
			wait(0.1)
			if i == #r then i = 1 else i = i + 1 end
		end
	end
	coroutine.wrap(EFWI_fake_script)()
	

	AimCentralUI.Name = "AimCentralUI"
	AimCentralUI.Parent = game.CoreGui
	AimCentralUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = AimCentralUI
	MainFrame.BackgroundColor3 = Color3.fromRGB(53, 53, 52)
	MainFrame.Position = UDim2.new(0, 1000, 0, 1000)
	MainFrame.Size = UDim2.new(0, 749, 0, 452)

	Pages.Name = "Pages"
	Pages.Parent = MainFrame

	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(43, 43, 42)
	LeftFrame.Size = UDim2.new(0, 178, 0, 452)

	UICorner.CornerRadius = UDim.new(0, 2)
	UICorner.Parent = LeftFrame

	ACLogo.Name = "ACLogo"
	ACLogo.Parent = LeftFrame
	ACLogo.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	ACLogo.BorderColor3 = Color3.fromRGB(27, 42, 53)
	ACLogo.BorderSizePixel = 0
	ACLogo.Position = UDim2.new(0.235602096, 0, 0, 0)
	ACLogo.Size = UDim2.new(0, 92, 0, 76)
	ACLogo.Image = "rbxassetid://9710891554"

	Seperator.Name = "Seperator"
	Seperator.Parent = LeftFrame
	Seperator.BackgroundColor3 = Color3.fromRGB(53, 53, 52)
	Seperator.BorderSizePixel = 0
	Seperator.Position = UDim2.new(0, 0, 0.165929213, 0)
	Seperator.Size = UDim2.new(0, 191, 0, 1)

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = LeftFrame
	TabHolder.Active = true
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.0366492122, 0, 0.205752209, 0)
	TabHolder.Size = UDim2.new(0, 171, 0, 359)
	TabHolder.ScrollBarThickness = 3

	TabHolderList.Parent = TabHolder
	TabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
	TabHolderList.Padding = UDim.new(0, 3)

	function library:Notify(text)

		local NotificationHolder = Instance.new("Frame")
		local Notification = Instance.new("Frame")
		local NotificationCorner = Instance.new("UICorner")
		local NotificationTop = Instance.new("Frame")
		local NotificationTopCorner = Instance.new("UICorner")
		local NotificationTitle = Instance.new("TextLabel")
		local OkayButton = Instance.new("Frame")
		local OkayButtonCorner = Instance.new("UICorner")
		local OkayButtonTrigger = Instance.new("TextButton")
		local NotificationText = Instance.new("TextLabel")
		
		NotificationHolder.Name = "NotificationHolder"
		NotificationHolder.Parent = MainFrame
		NotificationHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		NotificationHolder.BackgroundTransparency = 0.500
		NotificationHolder.Size = UDim2.new(0, 749, 0, 452)
		NotificationHolder.Visible = false

		Notification.Name = "Notification"
		Notification.Parent = NotificationHolder
		Notification.BackgroundColor3 = Color3.fromRGB(53, 53, 52)
		Notification.Position = UDim2.new(0.264352471, 0, 0.265486717, 0)
		Notification.Size = UDim2.new(0, 0, 0, 0)

		NotificationCorner.Name = "NotificationCorner"
		NotificationCorner.Parent = Notification

		NotificationTop.Name = "NotificationTop"
		NotificationTop.Parent = Notification
		NotificationTop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotificationTop.BackgroundTransparency = 1.000
		NotificationTop.Position = UDim2.new(0.161214948, 0, 0, 0)
		NotificationTop.Size = UDim2.new(0, 298, 0, 45)

		NotificationTopCorner.Name = "NotificationTopCorner"
		NotificationTopCorner.Parent = NotificationTop

		NotificationTitle.Name = "NotificationTitle"
		NotificationTitle.Parent = NotificationTop
		NotificationTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotificationTitle.BackgroundTransparency = 1.000
		NotificationTitle.Position = UDim2.new(0.155172408, 0, 0, 0)
		NotificationTitle.Size = UDim2.new(0, 200, 0, 50)
		NotificationTitle.Font = Enum.Font.JosefinSans
		NotificationTitle.Text = "You've got mail!"
		NotificationTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
		NotificationTitle.TextSize = 14.000
		NotificationTitle.TextTransparency = 1.000

		OkayButton.Name = "OkayButton"
		OkayButton.Parent = Notification
		OkayButton.BackgroundColor3 = Color3.fromRGB(43, 43, 42)
		OkayButton.Position = UDim2.new(0.137850478, 0, 0.733881116, 0)
		OkayButton.Size = UDim2.new(0, 312, 0, 41)
		OkayButton.BackgroundTransparency = 1

		OkayButtonCorner.Name = "OkayButtonCorner"
		OkayButtonCorner.Parent = OkayButton

		OkayButtonTrigger.Name = "OkayButtonTrigger"
		OkayButtonTrigger.Parent = OkayButton
		OkayButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		OkayButtonTrigger.BackgroundTransparency = 1.000
		OkayButtonTrigger.Size = UDim2.new(0, 312, 0, 41)
		OkayButtonTrigger.Font = Enum.Font.JosefinSans
		OkayButtonTrigger.Text = "Okay"
		OkayButtonTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
		OkayButtonTrigger.TextSize = 14.000
		OkayButtonTrigger.TextTransparency = 1.000

		NotificationText.Name = "NotificationText"
		NotificationText.Parent = Notification
		NotificationText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		NotificationText.BackgroundTransparency = 1.000
		NotificationText.Position = UDim2.new(0.0210280381, 0, 0.243243247, 0)
		NotificationText.Size = UDim2.new(0, 410, 0, 82)
		NotificationText.Font = Enum.Font.JosefinSans
		NotificationText.Text = text
		NotificationText.TextColor3 = Color3.fromRGB(255, 255, 255)
		NotificationText.TextSize = 14.000
		NotificationText.TextTransparency = 1.000
		
		NotificationHolder.Visible = true
		
		
		Tween(NotificationHolder, 0.7, {BackgroundTransparency = 0.5})
		Tween(Notification, 0.7, {Size = UDim2.new(0, 428, 0, 185)})
		
		repeat wait(0.1) until Notification.Size == UDim2.new(0, 428, 0, 185)
		
		Tween(NotificationText, 0.7, {TextTransparency = 0})
		Tween(NotificationTitle, 0.7, {TextTransparency = 0})
		Tween(OkayButtonTrigger, 0.7, {TextTransparency = 0})

		Tween(OkayButton, 0.7, {BackgroundTransparency = 0})
		
		OkayButtonTrigger.MouseEnter:Connect(function()
			Tween(OkayButtonTrigger, 0.4, {TextSize=12})			
		end)
		OkayButtonTrigger.MouseLeave:Connect(function()
			Tween(OkayButtonTrigger, 0.4, {TextSize = 14})
		end)
		OkayButtonTrigger.MouseButton1Click:Connect(function()
			
			Tween(OkayButtonTrigger, 0.08, {TextSize = 8}, false)
			Tween(OkayButtonTrigger, 0.10, {TextSize = 16}, false)
			Tween(OkayButtonTrigger, 0.12, {TextSize = 14}, false)
			
			Tween(NotificationText, 0.7, {TextTransparency = 1.000})
			Tween(NotificationTitle, 0.7, {TextTransparency = 1.000})
			Tween(OkayButtonTrigger, 0.7, {TextTransparency = 1.000})
			Tween(OkayButton, 0.7, {BackgroundTransparency = 1.000})
			
			repeat wait(0.1) until OkayButtonTrigger.TextTransparency == 1.000
			
			Tween(NotificationHolder, 0.7, {BackgroundTransparency = 1})
			Tween(Notification, 0.7, {Size = UDim2.new(0, 0, 0, 0)})
			wait(0.7)
			NotificationHolder.Visible = false
			Notification:Destroy()
		end)
		
		
	end
	
	local TabHandler = {}
	
	function TabHandler:Tab(tabname)
		tabname = tabname or "New Tab"
		
		local TabButton = Instance.new("Frame")
		local TabButtonCorner = Instance.new("UICorner")
		local TabButtonName = Instance.new("TextLabel")
		local TabButtonTrigger = Instance.new("TextButton")
		local Page = Instance.new("ScrollingFrame")
		local PageList = Instance.new("UIListLayout")
		


		TabButton.Name = "TabButton"
		TabButton.Parent = TabHolder
		TabButton.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
		TabButton.Size = UDim2.new(0, 161, 0, 31)

		TabButtonCorner.Name = "TabButtonCorner"
		TabButtonCorner.Parent = TabButton

		TabButtonName.Name = "TabButtonName"
		TabButtonName.Parent = TabButton
		TabButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.BackgroundTransparency = 1.000
		TabButtonName.Size = UDim2.new(0, 161, 0, 31)
		TabButtonName.Font = Enum.Font.JosefinSans
		TabButtonName.Text = tabname
		TabButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.TextSize = 14.000

		TabButtonTrigger.Name = "TabButtonTrigger"
		TabButtonTrigger.Parent = TabButton
		TabButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonTrigger.BackgroundTransparency = 1.000
		TabButtonTrigger.Size = UDim2.new(0, 161, 0, 31)
		TabButtonTrigger.Font = Enum.Font.SourceSans
		TabButtonTrigger.Text = ""
		TabButtonTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
		TabButtonTrigger.TextSize = 14.000

		Page.Name = "Page"
		Page.Parent = Pages
		Page.Active = true
		Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Page.BackgroundTransparency = 1.000
		Page.BorderSizePixel = 0
		Page.Position = UDim2.new(0.245660886, 0, 0.0154867256, 0)
		Page.Size = UDim2.new(0, 559, 0, 439)
		Page.ScrollBarThickness = 3
		Page.Visible = false

		PageList.Name = "PageList"
		PageList.Parent = Page
		PageList.SortOrder = Enum.SortOrder.LayoutOrder
		PageList.HorizontalAlignment = Enum.HorizontalAlignment.Left
		PageList.Padding = UDim.new(0, 3)
		
		local pagetweenspeed = 0.14

		TabButtonTrigger.MouseButton1Click:Connect(function()
			for i, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					Tween(v, pagetweenspeed, {BackgroundTransparency = 1})
					Tween(v.TabButtonName, pagetweenspeed, {TextTransparency = 0.550})
				end
			end
			for i, v in pairs(Pages:GetChildren()) do
				v.Visible = false
			end
			Tween(TabButton, pagetweenspeed, {BackgroundTransparency = 0})
			Tween(TabButtonName, pagetweenspeed, {TextTransparency = 0.2})
			Page.Visible = true
		end)

		Pages:FindFirstChild("Page").Visible = true
		Tween(TabHolder:FindFirstChild("TabButton"), pagetweenspeed, {BackgroundTransparency = 0})
		Tween(TabHolder:FindFirstChild("TabButton").TabButtonName, pagetweenspeed, {TextTransparency = 0.2})

		TabHolder.CanvasSize = UDim2.new(0, 0, 0, TabHolderList.AbsoluteContentSize.Y)
		
		local Components = {}

		function Components:Section(sectionname)
			
			sectionname = sectionname or "Section"
			
			local Section = Instance.new("Frame")
			local SectionCorner = Instance.new("UICorner")
			local SectionItemList = Instance.new("UIListLayout")
			local SectionName = Instance.new("TextLabel")

			Section.Name = "Section"
			Section.Parent = Page
			Section.BackgroundColor3 = Color3.fromRGB(45, 45, 44)
			Section.Size = UDim2.new(0, 559, 0, 543)

			SectionCorner.CornerRadius = UDim.new(0, 4)
			SectionCorner.Name = "SectionCorner"
			SectionCorner.Parent = Section

			SectionItemList.Name = "SectionItemList"
			SectionItemList.Parent = Section
			SectionItemList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			SectionItemList.SortOrder = Enum.SortOrder.LayoutOrder
			SectionItemList.Padding = UDim.new(0, 2)

			SectionName.Name = "SectionName"
			SectionName.Parent = Section
			SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.BackgroundTransparency = 1.000
			SectionName.Position = UDim2.new(0.321109116, 0, 0, 0)
			SectionName.Size = UDim2.new(0, 555, 0, 39)
			SectionName.Font = Enum.Font.JosefinSans
			SectionName.Text = sectionname
			SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.TextSize = 14.000

			Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
			
			local Container = {}
			
			function Container:Button(buttontext, callback)
				buttontext = buttontext or "Button"
				local callback = callback or function() end
				
				local Button = Instance.new("TextButton")
				local ButtonCorner = Instance.new("UICorner")
				
				Button.Name = "Button"
				Button.Parent = Section
				Button.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Button.Position = UDim2.new(0, 0, 0.0644567236, 0)
				Button.Size = UDim2.new(0, 544, 0, 50)
				Button.Font = Enum.Font.JosefinSans
				Button.TextColor3 = Color3.fromRGB(255, 255, 255)
				Button.TextSize = 14.000
				Button.Text = buttontext

				ButtonCorner.Name = "ButtonCorner"
				ButtonCorner.Parent = Button
				
				Button.MouseButton1Click:Connect(function()
					callback()
				end)

				Section.Size = Section.Size + UDim2.new(0, 0, 0, Button.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			function Container:Toggle(togglename, preset, callback)
				
				local callback = callback or function() end
				
				local Toggle = Instance.new("Frame")
				local ToggleCorner = Instance.new("UICorner")
				local ToggleOut = Instance.new("Frame")
				local ToggleOutCorner = Instance.new("UICorner")
				local ToggleTrigger = Instance.new("TextButton")
				local ToggleName = Instance.new("TextLabel")
				
				Toggle.Name = "Toggle"
				Toggle.Parent = Section
				Toggle.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Toggle.Size = UDim2.new(0, 544, 0, 50)

				ToggleCorner.Name = "ToggleCorner"
				ToggleCorner.Parent = Toggle

				ToggleOut.Name = "ToggleOut"
				ToggleOut.Parent = Toggle
				ToggleOut.BackgroundColor3 = Color3.fromRGB(74, 74, 73)
				ToggleOut.Position = UDim2.new(0.946691155, 0, 0.25999999, 0)
				ToggleOut.Size = UDim2.new(0, 20, 0, 20)

				ToggleOutCorner.CornerRadius = UDim.new(0, 4)
				ToggleOutCorner.Name = "ToggleOutCorner"
				ToggleOutCorner.Parent = ToggleOut

				ToggleTrigger.Name = "ToggleTrigger"
				ToggleTrigger.Parent = Toggle
				ToggleTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleTrigger.BackgroundTransparency = 1.000
				ToggleTrigger.Size = UDim2.new(0, 544, 0, 50)
				ToggleTrigger.Font = Enum.Font.SourceSans
				ToggleTrigger.Text = ""
				ToggleTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				ToggleTrigger.TextSize = 14.000

				ToggleName.Name = "ToggleName"
				ToggleName.Parent = Toggle
				ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ToggleName.BackgroundTransparency = 1.000
				ToggleName.Position = UDim2.new(0.0147058824, 0, 0, 0)
				ToggleName.Size = UDim2.new(0, 387, 0, 50)
				ToggleName.Font = Enum.Font.JosefinSans
				ToggleName.Text = togglename
				ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
				ToggleName.TextSize = 14.000
				ToggleName.TextXAlignment = Enum.TextXAlignment.Left

				local toggled = false
				if preset and preset == true then
					toggled = true
				end
				
				callback(toggled)
				
				ToggleTrigger.MouseButton1Click:Connect(function()
					toggled = not toggled
					callback(toggled)
					
					if toggled then 
						game.TweenService:Create(ToggleOut, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(255, 109, 83)
						}):Play()
						--- We put our animation here when the toggle is on
					else
						game.TweenService:Create(ToggleOut, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
							BackgroundColor3 = Color3.fromRGB(61, 67, 74)
						}):Play()
						---We Put our animation here when the toggle is off
					end
					
				end)
				
				Section.Size = Section.Size + UDim2.new(0, 0, 0, Toggle.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			function Container:Slider(slidername, minvalue, maxvalue, callback)
				
				local minvalue = minvalue or 1
				local maxvalue = maxvalue or 100
				local callback = callback or function() end
				
				local Slider = Instance.new("Frame")
				local SliderCorner = Instance.new("UICorner")
				local SliderName = Instance.new("TextLabel")
				local SliderOut = Instance.new("ImageLabel")
				local SliderIn = Instance.new("ImageLabel")
				local SliderValue = Instance.new("TextLabel")
				local SliderTrigger = Instance.new("TextButton")
				
				Slider.Name = "Slider"
				Slider.Parent = Section
				Slider.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Slider.Position = UDim2.new(0.0125223612, 0, 0.00184162066, 0)
				Slider.Size = UDim2.new(0, 544, 0, 50)

				SliderCorner.Name = "SliderCorner"
				SliderCorner.Parent = Slider

				SliderName.Name = "SliderName"
				SliderName.Parent = Slider
				SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderName.BackgroundTransparency = 1.000
				SliderName.Position = UDim2.new(0.0147058824, 0, 0, 0)
				SliderName.Size = UDim2.new(0, 387, 0, 50)
				SliderName.Font = Enum.Font.JosefinSans
				SliderName.Text = "Slider"
				SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderName.TextSize = 14.000
				SliderName.TextXAlignment = Enum.TextXAlignment.Left

				SliderOut.Name = "SliderOut"
				SliderOut.Parent = Slider
				SliderOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderOut.BackgroundTransparency = 1.000
				SliderOut.Position = UDim2.new(0.0129295802, 0, 0.712333381, 0)
				SliderOut.Size = UDim2.new(0, 527, 0, 9)
				SliderOut.Image = "rbxassetid://3570695787"
				SliderOut.ImageColor3 = Color3.fromRGB(45, 45, 44)
				SliderOut.ImageTransparency = 0.400
				SliderOut.ScaleType = Enum.ScaleType.Slice
				SliderOut.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderOut.SliceScale = 0.100

				SliderIn.Name = "SliderIn"
				SliderIn.Parent = SliderOut
				SliderIn.BackgroundColor3 = Color3.fromRGB(250, 128, 114)
				SliderIn.BackgroundTransparency = 1.000
				SliderIn.Size = UDim2.new(0, 234, 0, 10)
				SliderIn.Image = "rbxassetid://3570695787"
				SliderIn.ImageColor3 = Color3.fromRGB(250, 128, 114)
				SliderIn.ImageTransparency = 0.200
				SliderIn.ScaleType = Enum.ScaleType.Slice
				SliderIn.SliceCenter = Rect.new(100, 100, 100, 100)
				SliderIn.SliceScale = 0.300

				SliderValue.Name = "SliderValue"
				SliderValue.Parent = Slider
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency = 1.000
				SliderValue.Position = UDim2.new(0.904411733, 0, 0.340000004, 0)
				SliderValue.Size = UDim2.new(0, 55, 0, 18)
				SliderValue.Font = Enum.Font.JosefinSans
				SliderValue.Text = "0"
				SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize = 14.000

				SliderTrigger.Name = "SliderTrigger"
				SliderTrigger.Parent = Slider
				SliderTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderTrigger.BackgroundTransparency = 1.000
				SliderTrigger.Size = UDim2.new(0, 544, 0, 50)
				SliderTrigger.Font = Enum.Font.SourceSans
				SliderTrigger.Text = ""
				SliderTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				SliderTrigger.TextSize = 14.000
				
				local mouse = game.Players.LocalPlayer:GetMouse()
				local uis = game:GetService("UserInputService")
				local Value
				local moveconnection
				local releaseconnection
				
				SliderTrigger.MouseButton1Down:Connect(function()
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 527) * SliderIn.AbsoluteSize.X) + tonumber(minvalue)) or 0
					pcall(function()
						callback(Value)
					end)
					SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 527), 0, 6)
					moveconnection = mouse.Move:Connect(function()
						SliderValue.Text = Value
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 527) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
							SliderValue.Text = Value
						end)
						SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 527), 0, 6)
					end)
					releaseconnection = uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 527) * SliderIn.AbsoluteSize.X) + tonumber(minvalue))
							pcall(function()
								callback(Value)
							end)
							SliderIn.Size = UDim2.new(0, math.clamp(mouse.X - SliderIn.AbsolutePosition.X, 0, 527), 0, 6)
							moveconnection:Disconnect()
							releaseconnection:Disconnect()
						end
					end)
				end)
				
				
			end
			
			function Container:Dropdown(dropdownname, list, callback)
				
				local list = list or {}
				local callback = callback or function() end
				local framesize = 0
				local itemcount = 0
				
				local Dropdown = Instance.new("Frame")
				local DropdownCorner = Instance.new("UICorner")
				local DropdownOutList = Instance.new("UIListLayout")
				local DropdownInfoHolder = Instance.new("Frame")
				local DropdownTrigger = Instance.new("TextButton")
				local DropdownText = Instance.new("TextLabel")
				local DropdownItemHolder = Instance.new("ScrollingFrame")
				local DropdownItemHolderList = Instance.new("UIListLayout")
				local DropdownItemHolderPadding = Instance.new("UIPadding")
				local SelectedOptionText = Instance.new("TextLabel")
				local Item = Instance.new("TextButton")
				local ItemCorner = Instance.new("UICorner")
				
				
				SelectedOptionText.Name = "SelectedOptionText"
				SelectedOptionText.Parent = DropdownInfoHolder
				SelectedOptionText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SelectedOptionText.BackgroundTransparency = 1.000
				SelectedOptionText.Position = UDim2.new(0.70588237, 0, 0, 0)
				SelectedOptionText.Size = UDim2.new(0, 151, 0, 50)
				SelectedOptionText.Font = Enum.Font.JosefinSans
				SelectedOptionText.Text = ""
				SelectedOptionText.TextColor3 = Color3.fromRGB(150, 150, 150)
				SelectedOptionText.TextSize = 14.000
				SelectedOptionText.TextXAlignment = Enum.TextXAlignment.Right
				
				Dropdown.Name = "Dropdown"
				Dropdown.Parent = Section
				Dropdown.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Dropdown.ClipsDescendants = true
				Dropdown.Position = UDim2.new(0.0134168155, 0, 0.373848975, 0)
				Dropdown.Size = UDim2.new(0, 544, 0, 50)

				DropdownCorner.Name = "DropdownCorner"
				DropdownCorner.Parent = Dropdown

				DropdownOutList.Name = "DropdownOutList"
				DropdownOutList.Parent = Dropdown
				DropdownOutList.SortOrder = Enum.SortOrder.LayoutOrder

				DropdownInfoHolder.Name = "DropdownInfoHolder"
				DropdownInfoHolder.Parent = Dropdown
				DropdownInfoHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownInfoHolder.BackgroundTransparency = 1.000
				DropdownInfoHolder.Size = UDim2.new(0, 544, 0, 48)

				DropdownText.Name = "DropdownText"
				DropdownText.Parent = DropdownInfoHolder
				DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownText.BackgroundTransparency = 1.000
				DropdownText.Position = UDim2.new(0.0147058824, 0, 0, 0)
				DropdownText.Size = UDim2.new(0, 387, 0, 50)
				DropdownText.Font = Enum.Font.JosefinSans
				DropdownText.Text = dropdownname
				DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
				DropdownText.TextSize = 14.000
				DropdownText.TextXAlignment = Enum.TextXAlignment.Left

				DropdownTrigger.Name = "DropdownTrigger"
				DropdownTrigger.Parent = DropdownInfoHolder
				DropdownTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownTrigger.BackgroundTransparency = 1.000
				DropdownTrigger.Size = UDim2.new(0, 544, 0, 49)
				DropdownTrigger.Font = Enum.Font.SourceSans
				DropdownTrigger.Text = ""
				DropdownTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
				DropdownTrigger.TextSize = 14.000

				DropdownItemHolder.Name = "DropdownItemHolder"
				DropdownItemHolder.Parent = Dropdown
				DropdownItemHolder.Active = true
				DropdownItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropdownItemHolder.BackgroundTransparency = 1.000
				DropdownItemHolder.BorderSizePixel = 0
				DropdownItemHolder.ClipsDescendants = false
				DropdownItemHolder.Position = UDim2.new(0, 0, 0.470588237, 0)
				DropdownItemHolder.Size = UDim2.new(0, 544, 0, 54)
				DropdownItemHolder.ScrollBarThickness = 3

				DropdownItemHolderList.Name = "DropdownItemHolderList"
				DropdownItemHolderList.Parent = DropdownItemHolder
				DropdownItemHolderList.SortOrder = Enum.SortOrder.LayoutOrder
				DropdownItemHolderList.Padding = UDim.new(0, 2)

				DropdownItemHolderPadding.Name = "DropdownItemHolderPadding"
				DropdownItemHolderPadding.Parent = DropdownItemHolder
				DropdownItemHolderPadding.PaddingBottom = UDim.new(0, 1)
				DropdownItemHolderPadding.PaddingLeft = UDim.new(0, 7)
				DropdownItemHolderPadding.PaddingTop = UDim.new(0, 1)
				
				local toggled = false
				local dropdowntweenspeed = 0.2
				
				DropdownTrigger.MouseButton1Click:Connect(function()
					if toggled == true then
						toggled = nil
						Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 544, 0, 121)})
						Tween(Section, dropdowntweenspeed, {Size = Section.Size - UDim2.new(0, 0, 0, (framesize + 7))})
						toggled = false
						for i = 1, dropdowntweenspeed * 1000000 do
							Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
							wait(0.000001)
						end
					elseif toggled == false then
						toggled = nil
						Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 544, 0, (121 + framesize + 7))})
						Tween(Section, dropdowntweenspeed, {Size = Section.Size + UDim2.new(0, 0, 0, (framesize + 7))})
						toggled = true
						for i = 1, dropdowntweenspeed * 1000000 do
							Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
							wait(0.000001)
						end
					end
				end)
				
				for i, v in next, list do

					itemcount = itemcount + 1
					if itemcount <= 4 then
						framesize = framesize + 40 + 2
					end

					DropdownItemHolder.Size = UDim2.new(0, 544, 0, framesize + 2)

					local Item = Instance.new("TextButton")
					local ItemCorner = Instance.new("UICorner")
					local ItemStroke = Instance.new("UIStroke")

					Item.Name = "Item"
					Item.Parent = DropdownItemHolder
					Item.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
					Item.Position = UDim2.new(0.03125, 0, 0.00495049497, 0)
					Item.Size = UDim2.new(0, 526, 0, 50)
					Item.Font = Enum.Font.JosefinSans
					Item.Text = v
					Item.TextColor3 = Color3.fromRGB(255, 255, 255)
					Item.TextSize = 14.000

					ItemCorner.Name = "ItemCorner"
					ItemCorner.Parent = Item

					DropdownItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemHolderList.AbsoluteContentSize.Y + 2)

					Item.MouseEnter:Connect(function()
						Tween(ItemStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
					end)
					Item.MouseLeave:Connect(function()
						Tween(ItemStroke, 0.1, {Color = Color3.fromRGB(46, 46, 47)})
					end)
					Item.MouseButton1Click:Connect(function()
						toggled = nil
						Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 544, 0, 50)})
						Tween(Section, dropdowntweenspeed, {Size = Section.Size - UDim2.new(0, 0, 0, (framesize + 7))})
						toggled = false
						DropdownText.Text = dropdownname
						SelectedOptionText.Text = v
						for i = 1, dropdowntweenspeed * 1000000 do
							Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
							wait(0.000001)
						end
					end)
					Item.MouseButton1Click:Connect(function()
						callback(v)
					end)

				end

				Section.Size = Section.Size + UDim2.new(0, 0, 0, Dropdown.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			function Container:Keybind(keybindname, presetbind, callback)
				
				local Keybind = Instance.new("Frame")
				local KeybindName = Instance.new("TextLabel")
				local CurrentBind = Instance.new("TextLabel")
				local KeybindCorner = Instance.new("UICorner")
				local KeybindTrigger = Instance.new("TextButton")
				local KeybindCorner_2 = Instance.new("UICorner")
				
				Keybind.Name = "Keybind"
				Keybind.Parent = Section
				Keybind.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Keybind.Position = UDim2.new(0.0134168155, 0, 0.475138128, 0)
				Keybind.Size = UDim2.new(0, 544, 0, 77)

				KeybindName.Name = "KeybindName"
				KeybindName.Parent = Keybind
				KeybindName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeybindName.BackgroundTransparency = 1.000
				KeybindName.BorderColor3 = Color3.fromRGB(27, 42, 53)
				KeybindName.Position = UDim2.new(0.0147058824, 0, 0, 0)
				KeybindName.Size = UDim2.new(0, 192, 0, 50)
				KeybindName.Font = Enum.Font.JosefinSans
				KeybindName.Text = "Keybind"
				KeybindName.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeybindName.TextSize = 14.000
				KeybindName.TextXAlignment = Enum.TextXAlignment.Left

				CurrentBind.Name = "CurrentBind"
				CurrentBind.Parent = Keybind
				CurrentBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				CurrentBind.BackgroundTransparency = 1.000
				CurrentBind.Position = UDim2.new(0.613970578, 0, 0.134328365, 0)
				CurrentBind.Size = UDim2.new(0, 201, 0, 32)
				CurrentBind.Font = Enum.Font.JosefinSans
				CurrentBind.Text = "R-CTRL"
				CurrentBind.TextColor3 = Color3.fromRGB(150, 150, 150)
				CurrentBind.TextSize = 14.000
				CurrentBind.TextXAlignment = Enum.TextXAlignment.Right

				KeybindCorner.Name = "KeybindCorner"
				KeybindCorner.Parent = Keybind

				KeybindTrigger.Name = "KeybindTrigger"
				KeybindTrigger.Parent = Keybind
				KeybindTrigger.BackgroundColor3 = Color3.fromRGB(42, 42, 43)
				KeybindTrigger.Position = UDim2.new(0.0147058824, 0, 0.522388041, 0)
				KeybindTrigger.Size = UDim2.new(0, 527, 0, 32)
				KeybindTrigger.Font = Enum.Font.JosefinSans
				KeybindTrigger.Text = "Change Keybind"
				KeybindTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeybindTrigger.TextSize = 12.000

				KeybindCorner_2.Name = "KeybindCorner"
				KeybindCorner_2.Parent = KeybindTrigger
				
				do
					CurrentBind.Text = tostring(presetbind.Name)
				end
				
				local ToggledKeybind = false
				
				KeybindTrigger.MouseButton1Click:connect(function()
					CurrentBind.Text = "..."
					local inputwait = UserInputService.InputBegan:wait()
					if inputwait.KeyCode.Name ~= "Unknown" then
						CurrentBind.Text = inputwait.KeyCode.Name
						presetbind = inputwait.KeyCode
						ToggledKeybind = true
					end
				end)
				
				UserInputService.InputBegan:connect(function(current, pressed)
					if not pressed then
						if current.KeyCode.Name == presetbind.Name then
							if ToggledKeybind == true then 
								ToggledKeybind = false 
							else
								if game:GetService("CoreGui"):FindFirstChild("AimCentralUI") then
									callback(Enum.KeyCode[CurrentBind.Text])
								end
							end
						end
					end
				end)

				Section.Size = Section.Size + UDim2.new(0, 0, 0, Keybind.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			function Container:Label(labelname, labelcolor)
				
				local labelcolor = labelcolor or Color3.fromRGB(255,255,255)
				
				local Label = Instance.new("Frame")
				local LabelCorner = Instance.new("UICorner")
				local LabelName = Instance.new("TextLabel")
				
				Label.Name = "Label"
				Label.Parent = Section
				Label.BackgroundColor3 = Color3.fromRGB(52, 52, 53)
				Label.Position = UDim2.new(0.0134168155, 0, 0.626151025, 0)
				Label.Size = UDim2.new(0, 544, 0, 48)

				LabelCorner.Name = "LabelCorner"
				LabelCorner.Parent = Label

				LabelName.Name = "LabelName"
				LabelName.Parent = Label
				LabelName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				LabelName.BackgroundTransparency = 1.000
				LabelName.Position = UDim2.new(0.0128676472, 0, 0, 0)
				LabelName.Size = UDim2.new(0, 537, 0, 50)
				LabelName.Font = Enum.Font.JosefinSans
				LabelName.TextColor3 = labelcolor
				LabelName.TextSize = 14.000
				LabelName.Text = labelname
				
				Section.Size = Section.Size + UDim2.new(0, 0, 0, Label.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			function Container:Line()
				
				local Line = Instance.new("Frame")
				local LineIn = Instance.new("Frame")
				
				Line.Name = "Line"
				Line.Parent = Section
				Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Line.BackgroundTransparency = 1.000
				Line.Position = UDim2.new(0.186940968, 0, 0.723756909, 0)
				Line.Size = UDim2.new(0, 511, 0, 8)

				LineIn.Name = "LineIn"
				LineIn.Parent = Line
				LineIn.BackgroundColor3 = Color3.fromRGB(72, 73, 75)
				LineIn.BackgroundTransparency = 0.400
				LineIn.BorderSizePixel = 0
				LineIn.Position = UDim2.new(-0.0381604694, 0, 0.596000671, 0)
				LineIn.Size = UDim2.new(0, 546, 0, 1)
				
				Section.Size = Section.Size + UDim2.new(0, 0, 0, Line.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			
			return Container
			
		end
		
		return Components
		
	end
	
	return TabHandler

	
end

return library
