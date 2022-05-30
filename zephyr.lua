local TweenService = game:getService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

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

local lib = {}

function lib:Create(hubname)
	
	hubname = hubname or "Zephyr"
	
	local ZephyrMain = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Pages = Instance.new("Folder")
	local MainFrameCorner = Instance.new("UICorner")
	local LeftFrame = Instance.new("Frame")
	local LeftFrameCorner = Instance.new("UICorner")
	local TopFrame = Instance.new("Frame")
	local TopFrameCorner = Instance.new("UICorner")
	local HubName = Instance.new("TextLabel")
	local TabHolder = Instance.new("ScrollingFrame")
	local TabHolderList = Instance.new("UIListLayout")

	--Properties:

	ZephyrMain.Name = "ZephyrMain"
	ZephyrMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ZephyrMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = ZephyrMain
	MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	MainFrame.Position = UDim2.new(0.289993197, 0, 0.295707464, 0)
	MainFrame.Size = UDim2.new(0, 617, 0, 256)
	MainFrame.Visible = false
	MainFrame.ClipsDescendants = true

	Pages.Name = "Pages"
	Pages.Parent = MainFrame

	MainFrameCorner.CornerRadius = UDim.new(0, 4)
	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	LeftFrame.Size = UDim2.new(0, 118, 0, 256)
	LeftFrame.ZIndex = 0

	LeftFrameCorner.CornerRadius = UDim.new(0, 2)
	LeftFrameCorner.Name = "LeftFrameCorner"
	LeftFrameCorner.Parent = LeftFrame

	TopFrame.Name = "TopFrame"
	TopFrame.Parent = MainFrame
	TopFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	TopFrame.Size = UDim2.new(0, 617, 0, 33)

	TopFrameCorner.CornerRadius = UDim.new(0, 2)
	TopFrameCorner.Name = "TopFrameCorner"
	TopFrameCorner.Parent = TopFrame

	HubName.Name = "HubName"
	HubName.Parent = TopFrame
	HubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HubName.BackgroundTransparency = 1.000
	HubName.Size = UDim2.new(0, 118, 0, 33)
	HubName.Font = Enum.Font.JosefinSans
	HubName.Text = hubname
	HubName.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubName.TextSize = 14.000
	

	TabHolder.Name = "TabHolder"
	TabHolder.Parent = MainFrame
	TabHolder.Active = true
	TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabHolder.BackgroundTransparency = 1.000
	TabHolder.BorderSizePixel = 0
	TabHolder.Position = UDim2.new(0.0162074547, 0, 0.1640625, 0)
	TabHolder.Size = UDim2.new(0, 108, 0, 200)
	TabHolder.ScrollBarThickness = 3

	TabHolderList.Name = "TabHolderList"
	TabHolderList.Parent = TabHolder
	TabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
	TabHolderList.Padding = UDim.new(0, 2)

	local NotificationHolder = Instance.new("Frame")
	local Notification = Instance.new("Frame")
	local NotificationCorner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Message = Instance.new("TextLabel")
	
	NotificationHolder.Name = "NotificationHolder"
	NotificationHolder.Parent = ZephyrMain
	NotificationHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NotificationHolder.BackgroundTransparency = 1.000
	NotificationHolder.Size = UDim2.new(0, 1591, 0, 878)
	NotificationHolder.Visible = false

	Notification.Name = "Notification"
	Notification.Parent = NotificationHolder
	Notification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Notification.Position = UDim2.new(1.1, 0, 0.878, 0)
	Notification.Size = UDim2.new(0, 277, 0, 72)

	Title.Name = "Title"
	Title.Parent = Notification
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(0, 277, 0, 30)
	Title.Font = Enum.Font.JosefinSans
	Title.Text = "Welcome " .. game:GetService("Players").LocalPlayer.Name
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextSize = 14.000

	Message.Name = "Message"
	Message.Parent = Notification
	Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Message.BackgroundTransparency = 1.000
	Message.Position = UDim2.new(0, 0, 0.402777791, 0)
	Message.Size = UDim2.new(0, 277, 0, 43)
	Message.Font = Enum.Font.JosefinSans
	Message.Text = hubname .. " is now loading!"
	Message.TextColor3 = Color3.fromRGB(255, 255, 255)
	Message.TextSize = 12.000
	
	MainFrame.Visible = false
	NotificationHolder.Visible = true
	
	Tween(Notification, 1, { Position = UDim2.new(0.82, 0, 0.878, 0)})
	wait(3)
	Tween(Notification, 1, { Position = UDim2.new(1.1, 0, 0.878, 0)})
	
	NotificationHolder.Visible = false
	MainFrame.Visible = true
	
	local TabHandler = {}
	
	function TabHandler:Tab(tabname)
		tabname = tabname or "Tab"
	
		local TabButton = Instance.new("Frame")
		local TabButtonCorner = Instance.new("UICorner")
		local TabButtonName = Instance.new("TextLabel")
		local TabButtonTrigger = Instance.new("TextButton")
		local Page = Instance.new("ScrollingFrame")
		local PageList = Instance.new("UIListLayout")
		local PagePadding = Instance.new("UIPadding")

		TabButton.Name = "TabButton"
		TabButton.Parent = TabHolder
		TabButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		TabButton.Position = UDim2.new(0.20731324, 0, 0.103515625, 0)
		TabButton.Size = UDim2.new(0, 101, 0, 30)

		TabButtonCorner.Name = "TabButtonCorner"
		TabButtonCorner.Parent = TabButton

		TabButtonName.Name = "TabButtonName"
		TabButtonName.Parent = TabButton
		TabButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.BackgroundTransparency = 1.000
		TabButtonName.Size = UDim2.new(0, 101, 0, 30)
		TabButtonName.Font = Enum.Font.JosefinSans
		TabButtonName.Text = tabname
		TabButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.TextSize = 14.000
		TabButtonName.TextTransparency = 0.550

		TabButtonTrigger.Name = "TabButtonTrigger"
		TabButtonTrigger.Parent = TabButton
		TabButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonTrigger.BackgroundTransparency = 1.000
		TabButtonTrigger.Size = UDim2.new(0, 101, 0, 30)
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
		Page.Position = UDim2.new(0.200972453, 0, 0.12890625, 0)
		Page.Size = UDim2.new(0, 487, 0, 217)
		Page.ScrollBarThickness = 3
		Page.Visible = false
		Page.ClipsDescendants = true

		PageList.Name = "PageList"
		PageList.Parent = Page
		PageList.SortOrder = Enum.SortOrder.LayoutOrder
		PageList.Padding = UDim.new(0, 4)
		
		PagePadding.Name = "PagePadding"
		PagePadding.Parent = Page
		PagePadding.PaddingBottom = UDim.new(0, 2)
		PagePadding.PaddingLeft = UDim.new(0, 2)
		PagePadding.PaddingTop = UDim.new(0, 2)
		
		TabButtonTrigger.MouseButton1Click:Connect(function()
			for i, v in pairs(TabHolder:GetChildren()) do
				if v:IsA("Frame") then
					Tween(v, 0.3, {BackgroundTransparency = 1})
					Tween(v.TabButtonName, 0.3, {TextTransparency = 0.550})
				end
			end
			for i, v in pairs(Pages:GetChildren()) do
				v.Visible = false
			end
			Tween(TabButton, 0.3, {BackgroundTransparency = 1})
			Tween(TabButtonName, 0.3, {TextTransparency = 0.2})
			Page.Visible = true
		end)
		
		local Components = {}
		
		function Components:Button(buttonname, callback)
			
			buttonname = buttonname or "Button"
			local callback = callback or function() end
			
			local Button = Instance.new("Frame")
			local ButtonCorner = Instance.new("UICorner")
			local ButtonTrigger = Instance.new("TextButton")

			Button.Name = "Button"
			Button.Parent = Page
			Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Button.Position = UDim2.new(0, 0, 0.173708916, 0)
			Button.Size = UDim2.new(0, 476, 0, 37)

			ButtonCorner.CornerRadius = UDim.new(0, 4)
			ButtonCorner.Name = "ButtonCorner"
			ButtonCorner.Parent = Button

			ButtonTrigger.Name = "ButtonTrigger"
			ButtonTrigger.Parent = Button
			ButtonTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTrigger.BackgroundTransparency = 1.000
			ButtonTrigger.Size = UDim2.new(0, 476, 0, 37)
			ButtonTrigger.Font = Enum.Font.JosefinSans
			ButtonTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
			ButtonTrigger.TextSize = 14.000
			
			Button.MouseEnter:Connect(function()
				Tween(ButtonTrigger, 0.05, {TextSize = 12})
			end)
			Button.MouseLeave:Connect(function()
				Tween(ButtonTrigger, 0.05, {TextSize = 14})
			end)
			ButtonTrigger.MouseButton1Click:Connect(function()
				callback()
			end)
			
		end
		
		function Components:Toggle(togglename, callback)
			
			local callback = callback or function() end
			
			local Toggle = Instance.new("Frame")
			local ToggleCorner = Instance.new("UICorner")
			local ToggleName = Instance.new("TextLabel")
			local ToggleOut = Instance.new("Frame")
			local ToggleOutCorner = Instance.new("UICorner")
			local ToggleTrigger = Instance.new("TextButton")
			
			Toggle.Name = "Toggle"
			Toggle.Parent = Page
			Toggle.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Toggle.Size = UDim2.new(0, 476, 0, 37)

			ToggleCorner.CornerRadius = UDim.new(0, 4)
			ToggleCorner.Name = "ToggleCorner"
			ToggleCorner.Parent = Toggle

			ToggleName.Name = "ToggleName"
			ToggleName.Parent = Toggle
			ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleName.BackgroundTransparency = 1.000
			ToggleName.Position = UDim2.new(0.0147058824, 0, 0, 0)
			ToggleName.Size = UDim2.new(0, 213, 0, 37)
			ToggleName.Font = Enum.Font.JosefinSans
			ToggleName.Text = togglename
			ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
			ToggleName.TextSize = 14.000
			ToggleName.TextXAlignment = Enum.TextXAlignment.Left

			ToggleOut.Name = "ToggleOut"
			ToggleOut.Parent = Toggle
			ToggleOut.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			ToggleOut.Position = UDim2.new(0.94747901, 0, 0.270270258, 0)
			ToggleOut.Size = UDim2.new(0, 17, 0, 17)

			ToggleOutCorner.CornerRadius = UDim.new(0, 3)
			ToggleOutCorner.Name = "ToggleOutCorner"
			ToggleOutCorner.Parent = ToggleOut

			ToggleTrigger.Name = "ToggleTrigger"
			ToggleTrigger.Parent = Toggle
			ToggleTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleTrigger.BackgroundTransparency = 1.000
			ToggleTrigger.Size = UDim2.new(0, 476, 0, 37)
			ToggleTrigger.Font = Enum.Font.SourceSans
			ToggleTrigger.Text = ""
			ToggleTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
			ToggleTrigger.TextSize = 14.000
			
			local toggled = false
			
			ToggleTrigger.MouseButton1Click:Connect(function()
				toggled = not toggled
				if toggled == true then
					game.TweenService:Create(ToggleOut, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(109, 255, 83)
					}):Play()
					repeat wait(0.1) until ToggleOut.BackgroundColor3 == Color3.fromRGB(109, 255, 83)
					callback(toggled)
				else
					game.TweenService:Create(ToggleOut, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(80, 80, 80)
					}):Play()
				end
			end)
			
		end
		
		function Components:Slider(slidername, minvalue, maxvalue, startvalue, callback)
			
			local minvalue = minvalue or 1
			local maxvalue = maxvalue or 100
			local startvalue = startvalue or 20
			local callback = callback or function() end
			
			local Slider = Instance.new("Frame")
			local SliderCorner = Instance.new("UICorner")
			local SliderName = Instance.new("TextLabel")
			local SliderOut = Instance.new("ImageLabel")
			local SliderIn = Instance.new("ImageLabel")
			local SliderValue = Instance.new("TextLabel")
			local SliderTrigger = Instance.new("TextButton")
			
			Slider.Name = "Slider"
			Slider.Parent = Page
			Slider.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Slider.Size = UDim2.new(0, 476, 0, 37)

			SliderCorner.CornerRadius = UDim.new(0, 4)
			SliderCorner.Name = "SliderCorner"
			SliderCorner.Parent = Slider

			SliderName.Name = "SliderName"
			SliderName.Parent = Slider
			SliderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderName.BackgroundTransparency = 1.000
			SliderName.Position = UDim2.new(0.0147058824, 0, 0, 0)
			SliderName.Size = UDim2.new(0, 193, 0, 37)
			SliderName.Font = Enum.Font.JosefinSans
			SliderName.Text = "Slider"
			SliderName.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderName.TextSize = 14.000
			SliderName.TextXAlignment = Enum.TextXAlignment.Left

			SliderOut.Name = "SliderOut"
			SliderOut.Parent = Slider
			SliderOut.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderOut.BackgroundTransparency = 1.000
			SliderOut.Position = UDim2.new(0, 0, 0.830294251, 0)
			SliderOut.Size = UDim2.new(0, 475, 0, 6)
			SliderOut.Image = "rbxassetid://3570695787"
			SliderOut.ImageColor3 = Color3.fromRGB(80, 80, 80)
			SliderOut.ImageTransparency = 0.400
			SliderOut.ScaleType = Enum.ScaleType.Slice
			SliderOut.SliceCenter = Rect.new(100, 100, 100, 100)
			SliderOut.SliceScale = 0.100

			SliderIn.Name = "SliderIn"
			SliderIn.Parent = SliderOut
			SliderIn.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
			SliderIn.BackgroundTransparency = 1.000
			SliderIn.Size = UDim2.new(0, 117, 0, 6)
			SliderIn.Image = "rbxassetid://3570695787"
			SliderIn.ImageTransparency = 0.200
			SliderIn.ScaleType = Enum.ScaleType.Slice
			SliderIn.SliceCenter = Rect.new(100, 100, 100, 100)
			SliderIn.SliceScale = 0.300

			SliderValue.Name = "SliderValue"
			SliderValue.Parent = Slider
			SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.BackgroundTransparency = 1.000
			SliderValue.Position = UDim2.new(0.934873939, 0, 0.162162155, 0)
			SliderValue.Size = UDim2.new(0, 30, 0, 25)
			SliderValue.Font = Enum.Font.JosefinSans
			SliderValue.Text = "20"
			SliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			SliderValue.TextSize = 14.000
			
			SliderTrigger.Name = "SliderTrigger"
			SliderTrigger.Parent = Slider
			SliderTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SliderTrigger.BackgroundTransparency = 1.000
			SliderTrigger.Position = UDim2.new(0, 0, 0.837837815, 0)
			SliderTrigger.Size = UDim2.new(0, 475, 0, 5)
			SliderTrigger.Font = Enum.Font.SourceSans
			SliderTrigger.Text = ""
			SliderTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
			SliderTrigger.TextSize = 14.000
			
			local dragging = false
			local value = startvalue
			
			RunService.RenderStepped:Connect(function()
				if dragging == true then
					Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(255,255,255)})
				end
			end)
			
			callback(value)
			
			do
				SliderIn.Size = UDim2.new((startvalue or 0) / maxvalue, 0, 0, 6)
			end
			
			local function move(input)
				local pos = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), -10, -0.6,0)
				local pos1 = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), 0, 0, 6)
				SliderIn:TweenSize(pos1, "Out", "Sine", 0.2, true)
				value = math.floor(((pos.X.Scale * maxvalue) / maxvalue) * (maxvalue - minvalue) + minvalue)
				SliderValue.Text = tostring(value)
				callback(value)
			end
			
			SliderTrigger.InputBegan:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = true
					end
				end
			)
			SliderTrigger.InputEnded:Connect(
				function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						dragging = false
					end
				end
			)
			UserInputService.InputChanged:Connect(function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					move(input)
					Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(180,180,180)})
				elseif not dragging then
					Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
				end
			end)
			
			
		end
		
		function Components:Dropdown(dropname, list, callback)
			
			local list = list or {}
			local callback = callback or function() end
			local framesize = 0
			local itemcount = 0
			
			local Dropdown = Instance.new("Frame")
			local DropdownCorner = Instance.new("UICorner")
			local DropdownOutList = Instance.new("UIListLayout")
			local DropdownInfoHolder = Instance.new("Frame")
			local DropdownText = Instance.new("TextLabel")
			local DropdownItemHolder = Instance.new("ScrollingFrame")
			local DropdownItemHolderList = Instance.new("UIListLayout")
			local DropdownItemHolderPadding = Instance.new("UIPadding")
			local DropdownTrigger = Instance.new("TextButton")
			local DropdownCurrentValue = Instance.new("TextLabel")

			DropdownCurrentValue.Name = "DropdownCurrentValue"
			DropdownCurrentValue.Parent = DropdownInfoHolder
			DropdownCurrentValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownCurrentValue.BackgroundTransparency = 1.000
			DropdownCurrentValue.Position = UDim2.new(0.613, 0, 0.171, 0)
			DropdownCurrentValue.Size = UDim2.new(0, 176, 0, 25)
			DropdownCurrentValue.Font = Enum.Font.JosefinSans
			DropdownCurrentValue.Text = "..."
			DropdownCurrentValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownCurrentValue.TextSize = 14.000
			DropdownCurrentValue.TextXAlignment = Enum.TextXAlignment.Right

			DropdownTrigger.Name = "DropdownTrigger"
			DropdownTrigger.Parent = DropdownInfoHolder
			DropdownTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownTrigger.BackgroundTransparency = 1.000
			DropdownTrigger.Size = UDim2.new(0, 472, 0, 32)
			DropdownTrigger.Font = Enum.Font.SourceSans
			DropdownTrigger.Text = ""
			DropdownTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropdownTrigger.TextSize = 14.000
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Page
			Dropdown.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Dropdown.Position = UDim2.new(0, 0, 0.57209301, 0)
			Dropdown.Size = UDim2.new(0, 476, 0, 35)
			Dropdown.ClipsDescendants = true

			DropdownCorner.CornerRadius = UDim.new(0, 4)
			DropdownCorner.Name = "DropdownCorner"
			DropdownCorner.Parent = Dropdown

			DropdownOutList.Name = "DropdownOutList"
			DropdownOutList.Parent = Dropdown
			DropdownOutList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			DropdownOutList.SortOrder = Enum.SortOrder.LayoutOrder

			DropdownInfoHolder.Name = "DropdownInfoHolder"
			DropdownInfoHolder.Parent = Dropdown
			DropdownInfoHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownInfoHolder.BackgroundTransparency = 1.000
			DropdownInfoHolder.Position = UDim2.new(0.280462176, 0, 0, 0)
			DropdownInfoHolder.Size = UDim2.new(0, 473, 0, 36)

			DropdownText.Name = "DropdownText"
			DropdownText.Parent = DropdownInfoHolder
			DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownText.BackgroundTransparency = 1.000
			DropdownText.Position = UDim2.new(0.012, 0, 0.084, 0)
			DropdownText.Size = UDim2.new(0, 467, 0, 32)
			DropdownText.Font = Enum.Font.JosefinSans
			DropdownText.Text = "Dropdown"
			DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
			DropdownText.TextSize = 14.000
			DropdownText.TextXAlignment = Enum.TextXAlignment.Left

			DropdownItemHolder.Name = "DropdownItemHolder"
			DropdownItemHolder.Parent = Dropdown
			DropdownItemHolder.Active = true
			DropdownItemHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropdownItemHolder.BackgroundTransparency = 1.000
			DropdownItemHolder.BorderSizePixel = 0
			DropdownItemHolder.Position = UDim2.new(-0.00105042022, 0, 0.438356161, 0)
			DropdownItemHolder.Size = UDim2.new(0, 477, 0, 41)
			DropdownItemHolder.ScrollBarThickness = 3

			DropdownItemHolderList.Name = "DropdownItemHolderList"
			DropdownItemHolderList.Parent = DropdownItemHolder
			DropdownItemHolderList.SortOrder = Enum.SortOrder.LayoutOrder
			DropdownItemHolderList.Padding = UDim.new(0, 2)

			DropdownItemHolderPadding.Name = "DropdownItemHolderPadding"
			DropdownItemHolderPadding.Parent = DropdownItemHolder
			DropdownItemHolderPadding.PaddingLeft = UDim.new(0, 7)
			
			local toggled = false
			local dropdowntweenspeed = 0.5
			
			DropdownTrigger.MouseButton1Click:Connect(function()
				if toggled == true then
					toggled = nil
					Tween(Dropdown, dropdowntweenspeed, { Size = UDim2.new(0, 476, 0, 35)})
					toggled = false
					for i = 1, dropdowntweenspeed * 1000000 do
						Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
						wait(0.000001)
					end
				elseif toggled == false then
					toggled = nil
					Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 476, 0, (35 + framesize + 7))})
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

				DropdownItemHolder.Size = UDim2.new(0, 340, 0, framesize + 2)

				local Item = Instance.new("TextButton")
				local ItemCorner = Instance.new("UICorner")
				local ItemStroke = Instance.new("UIStroke")

				Item.Name = "Item"
				Item.Parent = DropdownItemHolder
				Item.BackgroundColor3 = Color3.fromRGB(24, 27, 33)
				Item.BorderSizePixel = 0
				Item.Position = UDim2.new(0.0280000009, 0, 0.419714272, 0)
				Item.Size = UDim2.new(0, 334, 0, 40)
				Item.AutoButtonColor = false
				Item.Font = Enum.Font.GothamSemibold
				Item.TextColor3 = Color3.fromRGB(255, 255, 255)
				Item.TextSize = 14.000
				Item.TextTransparency = 0.200
				Item.Text = v or "Item"

				ItemCorner.CornerRadius = UDim.new(0, 4)
				ItemCorner.Name = "ItemCorner"
				ItemCorner.Parent = Item

				ItemStroke.Name = "ItemStroke"
				ItemStroke.Parent = Item
				ItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				ItemStroke.Color = Color3.fromRGB(46, 46, 47)
				ItemStroke.Thickness = 1

				DropdownItemHolder.CanvasSize = UDim2.new(0, 0, 0, DropdownItemHolderList.AbsoluteContentSize.Y + 2)

				Item.MouseButton1Click:Connect(function()
					toggled = nil
					Tween(Dropdown, dropdowntweenspeed, {Size = UDim2.new(0, 476, 0, 35)})
					toggled = false
					DropdownCurrentValue.Text = v
					for i = 1, dropdowntweenspeed * 1000000 do
						Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
						wait(0.000001)
					end
				end)
				Item.MouseButton1Click:Connect(function()
					callback(v)
				end)

			end
			
		end
		
		function Components:Keybind(keybind, presetbind, callback)

			keybind = keybind or "Keybind"

			local Keybind = Instance.new("Frame")
			local KeybindText = Instance.new("TextLabel")
			local KeybindCorner = Instance.new("UICorner")
			local CurrentKeybind = Instance.new("TextLabel")
			local KeybindTrigger = Instance.new("TextButton")

			Keybind.Name = "Keybind"
			Keybind.Parent = Page
			Keybind.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Keybind.Size = UDim2.new(0, 476, 0, 37)

			KeybindText.Name = "KeybindText"
			KeybindText.Parent = Keybind
			KeybindText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KeybindText.BackgroundTransparency = 1.000
			KeybindText.Position = UDim2.new(0.0147058824, 0, 0, 0)
			KeybindText.Size = UDim2.new(0, 187, 0, 36)
			KeybindText.Font = Enum.Font.JosefinSans
			KeybindText.Text = keybind
			KeybindText.TextColor3 = Color3.fromRGB(255, 255, 255)
			KeybindText.TextSize = 14.000
			KeybindText.TextXAlignment = Enum.TextXAlignment.Left

			KeybindCorner.CornerRadius = UDim.new(0, 4)
			KeybindCorner.Name = "KeybindCorner"
			KeybindCorner.Parent = Keybind

			CurrentKeybind.Name = "CurrentKeybind"
			CurrentKeybind.Parent = Keybind
			CurrentKeybind.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			CurrentKeybind.BackgroundTransparency = 1.000
			CurrentKeybind.Position = UDim2.new(0.94747901, 0, 0.216216207, 0)
			CurrentKeybind.Size = UDim2.new(0, 23, 0, 21)
			CurrentKeybind.Font = Enum.Font.JosefinSans
			CurrentKeybind.Text = keybind
			CurrentKeybind.TextColor3 = Color3.fromRGB(255, 255, 255)
			CurrentKeybind.TextSize = 14.000

			KeybindTrigger.Name = "KeybindTrigger"
			KeybindTrigger.Parent = Keybind
			KeybindTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			KeybindTrigger.BackgroundTransparency = 1.000
			KeybindTrigger.Size = UDim2.new(0, 474, 0, 36)
			KeybindTrigger.Font = Enum.Font.SourceSans
			KeybindTrigger.Text = ""
			KeybindTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
			KeybindTrigger.TextSize = 14.000

			do
				CurrentKeybind.Text = tostring(presetbind.Name)
			end

			local ToggledKeybind = false

			KeybindTrigger.MouseButton1Click:connect(function()
				CurrentKeybind.Text = "..."
				local inputwait = UserInputService.InputBegan:wait()
				if inputwait.KeyCode.Name ~= "Unknown" then
					CurrentKeybind.Text = inputwait.KeyCode.Name
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
							if game:GetService("CoreGui"):FindFirstChild("ZephyrMain") then
								callback(Enum.KeyCode[CurrentKeybind.Text])
							end
						end
					end
				end
			end)

		end
		
		function Components:Textbox(textboxname, presettext, callback)
			local callback = callback or function() end
			
			local Textbox = Instance.new("Frame")
			local TextboxCorner = Instance.new("UICorner")
			local TextboxName = Instance.new("TextLabel")
			local TextboxInput = Instance.new("TextBox")
			local TextboxInputCorner = Instance.new("UICorner")
			
			Textbox.Name = "Textbox"
			Textbox.Parent = Page
			Textbox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			Textbox.Size = UDim2.new(0, 476, 0, 35)

			TextboxCorner.CornerRadius = UDim.new(0, 4)
			TextboxCorner.Name = "TextboxCorner"
			TextboxCorner.Parent = Textbox

			TextboxName.Name = "TextboxName"
			TextboxName.Parent = Textbox
			TextboxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextboxName.BackgroundTransparency = 1.000
			TextboxName.Position = UDim2.new(0.0147058824, 0, 0, 0)
			TextboxName.Size = UDim2.new(0, 192, 0, 35)
			TextboxName.Font = Enum.Font.JosefinSans
			TextboxName.Text = textboxname
			TextboxName.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextboxName.TextSize = 14.000
			TextboxName.TextXAlignment = Enum.TextXAlignment.Left

			TextboxInput.Name = "TextboxInput"
			TextboxInput.Parent = Textbox
			TextboxInput.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
			TextboxInput.Position = UDim2.new(0.558823526, 0, 0.171428576, 0)
			TextboxInput.Size = UDim2.new(0, 200, 0, 22)
			TextboxInput.Font = Enum.Font.Roboto
			TextboxInput.Text = "Placeholder Text"
			TextboxInput.TextColor3 = Color3.fromRGB(180, 180, 180)
			TextboxInput.TextSize = 14.000

			TextboxInputCorner.CornerRadius = UDim.new(0, 4)
			TextboxInputCorner.Name = "TextboxInputCorner"
			TextboxInputCorner.Parent = TextboxInput
			
			TextboxInput.Focused:Connect(function()
				
			end)
			TextboxInput.FocusLost:Connect(function()
				if TextboxInput.Text ~= "" then
					callback(TextboxInput.Text)
					TextboxInput.Text = ""
				end
			end)		
			
		end
		
		return Components
		
	end
	return TabHandler
	
end
return lib
