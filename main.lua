local WindowTable = {}

function WindowTable:Create()
	
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Main = Instance.new("ScreenGui")
	local MainWindow = Instance.new("Frame")
	local mainCorner = Instance.new("UICorner")
	local SideBar = Instance.new("Frame")
	local sideCorner = Instance.new("UICorner")
	local allTabs = Instance.new("Frame")
	local tabListing = Instance.new("UIListLayout")
	local allPages = Instance.new("ScrollingFrame")
	local mainCorner_2 = Instance.new("UICorner")
	local pagesFolder = Instance.new("Folder")

	--Properties:

	Main.Name = "Main"
	Main.Parent = game.CoreGui
	Main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainWindow.Name = "MainWindow"
	MainWindow.Parent = Main
	MainWindow.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	MainWindow.Position = UDim2.new(0.349328071, 0, 0.311360478, 0)
	MainWindow.Size = UDim2.new(0, 550, 0, 268)

	mainCorner.Name = "mainCorner"
	mainCorner.Parent = MainWindow

	SideBar.Name = "SideBar"
	SideBar.Parent = MainWindow
	SideBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	SideBar.Position = UDim2.new(0.0145454546, 0, 0.12686567, 0)
	SideBar.Size = UDim2.new(0, 121, 0, 225)

	sideCorner.Name = "sideCorner"
	sideCorner.Parent = SideBar

	allTabs.Name = "allTabs"
	allTabs.Parent = SideBar
	allTabs.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	allTabs.Position = UDim2.new(0.0702479333, 0, 0.0377777778, 0)
	allTabs.Size = UDim2.new(0, 104, 0, 210)

	tabListing.Name = "tabListing"
	tabListing.Parent = allTabs
	tabListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tabListing.SortOrder = Enum.SortOrder.LayoutOrder
	tabListing.Padding = UDim.new(0, 2)

	allPages.Name = "allPages"
	allPages.Parent = MainWindow
	allPages.Active = true
	allPages.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	allPages.Position = UDim2.new(0.246234685, 0, 0.13059701, 0)
	allPages.Size = UDim2.new(0.742856085, 0, 0.835821033, 0)
	allPages.ScrollBarThickness = 4

	mainCorner_2.CornerRadius = UDim.new(0, 100)
	mainCorner_2.Name = "mainCorner"
	mainCorner_2.Parent = allPages

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = allPages

	
	local TabHandler = {}
	
	function TabHandler:Tab(tabName)
		tabName = tabName
		
		local tabButton = Instance.new("TextButton") -- our tab
		local UICorner = Instance.new("UICorner")-- our tab corner
		local newPage = Instance.new("ScrollingFrame") -- our page
		local elementsListing = Instance.new("UIListLayout") -- our page listing
		
		local elementsPadding = Instance.new("UIPadding")

		elementsPadding.Name = "elementsPadding"
		elementsPadding.Parent = newPage
		elementsPadding.PaddingRight = UDim.new(0, 5)
		elementsPadding.PaddingTop = UDim.new(0, 5)
		
		tabButton.Name = "tabButton"
		tabButton.Parent = allTabs
		tabButton.AnchorPoint = Vector2.new(0, 0.100000001)
		tabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		tabButton.BackgroundTransparency = 0.300
		tabButton.Position = UDim2.new(-0.0192307699, 0, 0.0152221676, 0)
		tabButton.Size = UDim2.new(0.1053719, 109, 0.00999999978, 32)
		tabButton.Font = Enum.Font.JosefinSans
		tabButton.Text = tabName
		tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabButton.TextSize = 14.000
		
		UICorner.Parent = tabButton
		
		newPage.Name = "newPage"
		newPage.Parent = allPages
		newPage.Active = true
		newPage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		newPage.Size = UDim2.new(0, 408, 0, 224)
		newPage.ScrollBarThickness = 4
		newPage.ScrollBarImageColor3 = Color3.fromRGB(250, 128, 114)
		

		elementsListing.Name = "elementsListing"
		elementsListing.Parent = newPage
		elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
		elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
		elementsListing.Padding = UDim.new(0, 5)
		
		local ElementHandler = {}

		function ElementHandler:Button(btnText, callback)
			btnText = btnText
			callback = callback or function() end
			
			local TextButton = Instance.new("TextButton")
			local buttonCorner = Instance.new("UICorner")
			
			TextButton.Parent = newPage
			TextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			TextButton.Position = UDim2.new(0,0,0.1,0)
			TextButton.Size = UDim2.new(0, 396, 0, 34)
			TextButton.Font = Enum.Font.JosefinSans
			TextButton.Text = btnText
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextSize = 14.000
			TextButton.ZIndex = 1
			TextButton.MouseButton1Click:Connect(function()
				callback()
			end)
			buttonCorner.CornerRadius = UDim.new(0, 8)
			buttonCorner.Name = "buttonCorner"
			buttonCorner.Parent = TextButton
		end
		
		function ElementHandler:Toggle(togInfo, callback)
			
			togInfo = togInfo
			callback = callback or function() end
			
			local toggleButton = Instance.new("TextButton")
			local toggleButtonCover = Instance.new("UICorner")
			local toggle = Instance.new("Frame")
			local toggleCorner = Instance.new("UICorner")
			local toggleInfo = Instance.new("TextLabel")
			
			toggleButton.Name = "toggleButton"
			toggleButton.Parent = newPage
			toggleButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			toggleButton.Position = UDim2.new(-1.52648937e-07, 0, 0.166535184, 0)
			toggleButton.Size = UDim2.new(0, 396, 0, 35)
			toggleButton.Font = Enum.Font.JosefinSans
			toggleButton.Text = ""
			toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			toggleButton.TextSize = 14.000

			toggleButtonCover.Name = "toggleButtonCover"
			toggleButtonCover.Parent = toggleButton

			toggle.Name = "toggle"
			toggle.Parent = toggleButton
			toggle.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
			toggle.Position = UDim2.new(0.017676767, 0, 0.171428576, 0)
			toggle.Size = UDim2.new(0, 22, 0, 22)

			toggleCorner.CornerRadius = UDim.new(0, 888)
			toggleCorner.Name = "toggleCorner"
			toggleCorner.Parent = toggle

			toggleInfo.Name = "toggleInfo"
			toggleInfo.Parent = toggleButton
			toggleInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			toggleInfo.BackgroundTransparency = 1.000
			toggleInfo.Position = UDim2.new(0.0934343413, 0, 0, 0)
			toggleInfo.Size = UDim2.new(0, 119, 0, 36)
			toggleInfo.Font = Enum.Font.JosefinSans
			toggleInfo.Text = togInfo
			toggleInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
			toggleInfo.TextSize = 14.000
			toggleInfo.TextXAlignment = Enum.TextXAlignment.Left
			
			local tog = false
			
			toggleButton.MouseButton1Click:Connect(function()
				tog = not tog
				callback(tog) -- Callbacks whenever we toggle
				if tog then 
					game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(255, 109, 83)
					}):Play()
					--- We put our animation here when the toggle is on
				else
					game.TweenService:Create(toggle, TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(61, 67, 74)
					}):Play()
					---We Put our animation here when the toggle is off
				end
			end)
			
		end
		
		function ElementHandler:Slider(text, minvalue, maxvalue, callback)
			
			text = text
			minvalue = minvalue or 0
			maxvalue = maxvalue or 0
			
			callback = callback or function() end
			
			local sliderInfo = Instance.new("TextLabel")
			local sliderCorner = Instance.new("UICorner")
			local sliderButton = Instance.new("TextButton")
			local sliderButtonCorner = Instance.new("UICorner")
			local sliderFill = Instance.new("Frame")
			local sliderFillCorner = Instance.new("UICorner")
			local sliderValue = Instance.new("TextLabel")
			
			sliderInfo.Name = "sliderInfo"
			sliderInfo.Parent = newPage
			sliderInfo.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			sliderInfo.BackgroundTransparency = 1.000
			sliderInfo.Position = UDim2.new(0.0223325063, 0, 0.325189382, 0)
			sliderInfo.Size = UDim2.new(0, 392, 0, 17)
			sliderInfo.Font = Enum.Font.JosefinSans
			sliderInfo.Text = "Slider"
			sliderInfo.TextColor3 = Color3.fromRGB(255, 255, 255)
			sliderInfo.TextSize = 14.000
			sliderInfo.TextXAlignment = Enum.TextXAlignment.Left

			sliderCorner.Name = "sliderCorner"
			sliderCorner.Parent = sliderInfo

			sliderButton.Name = "sliderButton"
			sliderButton.Parent = sliderInfo
			sliderButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
			sliderButton.Position = UDim2.new(0, 0, 1, 0)
			sliderButton.Size = UDim2.new(0, 392, 0, 6)
			sliderButton.Font = Enum.Font.JosefinSans
			sliderButton.Text = ""
			sliderButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			sliderButton.TextSize = 14.000

			sliderButtonCorner.Name = "sliderButtonCorner"
			sliderButtonCorner.Parent = sliderButton

			sliderFill.Name = "sliderFill"
			sliderFill.Parent = sliderInfo
			sliderFill.BackgroundColor3 = Color3.fromRGB(255, 109, 83)
			sliderFill.Position = UDim2.new(-0.01, 0, 1, 0)
			sliderFill.Size = UDim2.new(0, 3, 0, 6)

			sliderFillCorner.Name = "sliderFillCorner"
			sliderFillCorner.Parent = sliderFill

			sliderValue.Name = "sliderValue"
			sliderValue.Parent = sliderInfo
			sliderValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			sliderValue.BackgroundTransparency = 1.000
			sliderValue.Position = UDim2.new(0.926020443, 0, -0.29411763, 0)
			sliderValue.Size = UDim2.new(0, 29, 0, 26)
			sliderValue.Font = Enum.Font.JosefinSans
			sliderValue.Text = "0"
			sliderValue.TextColor3 = Color3.fromRGB(255, 255, 255)
			sliderValue.TextSize = 14.000
			
			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")
			local Value
			local moveconnection
			local releaseconnection
			
			sliderButton.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 392) * sliderFill.AbsoluteSize.X) + tonumber(minvalue)) or 0
				pcall(function()
					callback(Value)
				end)
				sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 318), 0, 16)
				moveconnection = mouse.Move:Connect(function()
					sliderValue.Text = Value
					Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 392) * sliderFill.AbsoluteSize.X) + tonumber(minvalue))
					pcall(function()
						callback(Value)
					end)
					sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 318), 0, 16)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 392) * sliderFill.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()
							callback(Value)
						end)
						sliderFill.Size = UDim2.new(0, math.clamp(mouse.X - sliderFill.AbsolutePosition.X, 0, 392), 0, 16)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
		end
		return ElementHandler
	end
	
	return TabHandler
	
end

return WindowTable
