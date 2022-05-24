local library = {}

local Utility = loadstring(game:HttpGet('https://hold4564.de/utility.lua'))()
local UserInputService = game:GetService("UserInputService")

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

	AimCentralUI.Name = "AimCentralUI"
	AimCentralUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	AimCentralUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = AimCentralUI
	MainFrame.BackgroundColor3 = Color3.fromRGB(53, 53, 52)
	MainFrame.Position = UDim2.new(0.286589533, 0, 0.162329614, 0)
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
				print(v)
				if v:IsA("Frame") then
					Utility:Tween(v, pagetweenspeed, {BackgroundTransparency = 1})
					Utility:Tween(v.TabButtonName, pagetweenspeed, {TextTransparency = 0.550})
				end
			end
			for i, v in pairs(Pages:GetChildren()) do
				v.Visible = false
			end
			Utility:Tween(TabButton, pagetweenspeed, {BackgroundTransparency = 0})
			Utility:Tween(TabButtonName, pagetweenspeed, {TextTransparency = 0.2})
			Page.Visible = true
		end)

		Pages:FindFirstChild("Page").Visible = true
		Utility:Tween(TabHolder:FindFirstChild("TabButton"), pagetweenspeed, {BackgroundTransparency = 0})
		Utility:Tween(TabHolder:FindFirstChild("TabButton").TabButtonName, pagetweenspeed, {TextTransparency = 0.2})

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
			
			function Container:Slider(slidername, minvalue, maxvalue, startvalue, callback)
				
				local minvalue = minvalue or 1
				local maxvalue = maxvalue or 100
				local startvalue = startvalue or 50
				local callback = callback or function() end
				
				local Slider = Instance.new("Frame")
				local SliderCorner = Instance.new("UICorner")
				local SliderName = Instance.new("TextLabel")
				local SliderOut = Instance.new("ImageLabel")
				local SliderIn = Instance.new("ImageLabel")
				local SliderCircle = Instance.new("ImageButton")
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
				SliderName.Text = slidername
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

				SliderCircle.Name = "SliderCircle"
				SliderCircle.Parent = SliderOut
				SliderCircle.BackgroundTransparency = 1.000
				SliderCircle.Position = UDim2.new(0.426666647, 0, -0.599999964, 0)
				SliderCircle.Size = UDim2.new(0, 22, 0, 22)
				SliderCircle.Image = "rbxassetid://3926305904"
				SliderCircle.ImageColor3 = Color3.fromRGB(250, 128, 114)
				SliderCircle.ImageRectOffset = Vector2.new(204, 484)
				SliderCircle.ImageRectSize = Vector2.new(36, 36)

				SliderValue.Name = "SliderValue"
				SliderValue.Parent = Slider
				SliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency = 1.000
				SliderValue.Position = UDim2.new(0.904411733, 0, 0.340000004, 0)
				SliderValue.Size = UDim2.new(0, 55, 0, 18)
				SliderValue.Font = Enum.Font.JosefinSans
				SliderValue.Text = "50"
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
				
				local dragging = false
				local value = startvalue
				
				callback(value)
				
				do
					SliderCircle.Position = UDim2.new((startvalue or 0) / maxvalue, -10, -0.6, 0)
					SliderIn.Size = UDim2.new((startvalue or 0) / maxvalue, 0, 0, 10)
				end
				
				local function move(input)
					local pos = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), -10, -0.6,0)
					local pos1 = UDim2.new(math.clamp((input.Position.X - SliderOut.AbsolutePosition.X) / SliderOut.AbsoluteSize.X, 0, 1), 0, 0, 10)
					SliderIn:TweenSize(pos1, "Out", "Sine", 0.2, true)
					SliderCircle:TweenPosition(pos, "Out", "Sine", 0.2, true)
					value = math.floor(((pos.X.Scale * maxvalue) / maxvalue) * (maxvalue - minvalue) + minvalue)
					SliderName.Text = (slidername or "Slider").." - "..tostring(value)
					callback(value)
				end
				
				SliderCircle.InputBegan:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = true
						end
					end
				)
				SliderCircle.InputEnded:Connect(
					function(input)
						if input.UserInputType == Enum.UserInputType.MouseButton1 then
							dragging = false
						end
					end
				)
				UserInputService.InputChanged:Connect(function(input)
					if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
						move(input)
						Utility:Tween(SliderCircle, 0.2, {ImageColor3 = Color3.fromRGB(250, 128, 114)})
						Utility:Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(250, 128, 114)})
					elseif not dragging then
						Utility:Tween(SliderCircle, 0.2, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
						Utility:Tween(SliderIn, 0.2, {ImageColor3 = Color3.fromRGB(255, 255, 255)})
					end
				end)
				
				Section.Size = Section.Size + UDim2.new(0, 0, 0, Slider.Size.Y.Offset + SectionItemList.Padding.Offset)
				Page.CanvasSize = UDim2.new(0, 0, 0, PageList.AbsoluteContentSize.Y)
				
			end
			
			return Container
			
		end
		
		return Components
		
	end
	
	return TabHandler
	
end

return library
