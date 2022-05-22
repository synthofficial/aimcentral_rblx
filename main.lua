local WindowTable = {}

function WindowTable:CreateWindow()
	
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Main = Instance.new("ScreenGui")
	local MainWindow = Instance.new("Frame")
	local mainCorner = Instance.new("UICorner")
	local hubName = Instance.new("TextLabel")
	local UICorner = Instance.new("UICorner")
	local gameName = Instance.new("TextLabel")
	local UICorner_2 = Instance.new("UICorner")
	local SideBar = Instance.new("Frame")
	local sideCorner = Instance.new("UICorner")
	local allTabs = Instance.new("Frame")
	local tabButton = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local tabListing = Instance.new("UIListLayout")
	local allPages = Instance.new("ScrollingFrame")
	local optionsCorner = Instance.new("UICorner")
	local pagesFolder = Instance.new("Folder")
	local newPage = Instance.new("ScrollingFrame")
	local elementsListing = Instance.new("UIListLayout")

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

	hubName.Name = "hubName"
	hubName.Parent = MainWindow
	hubName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	hubName.Size = UDim2.new(0, 88, 0, 35)
	hubName.Font = Enum.Font.SciFi
	hubName.Text = "Hub Name"
	hubName.TextColor3 = Color3.fromRGB(255, 255, 255)
	hubName.TextSize = 14.000

	UICorner.Parent = hubName

	gameName.Name = "gameName"
	gameName.Parent = MainWindow
	gameName.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	gameName.Position = UDim2.new(0.411632001, 0, -0.00164848566, 0)
	gameName.Size = UDim2.new(0, 88, 0, 35)
	gameName.Font = Enum.Font.SciFi
	gameName.Text = "Game Name"
	gameName.TextColor3 = Color3.fromRGB(255, 255, 255)
	gameName.TextSize = 14.000

	UICorner_2.Parent = gameName

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

	tabButton.Name = "tabButton"
	tabButton.Parent = allTabs
	tabButton.AnchorPoint = Vector2.new(0, 0.100000001)
	tabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	tabButton.BackgroundTransparency = 0.300
	tabButton.Position = UDim2.new(-0.0192307699, 0, 0.0152221676, 0)
	tabButton.Size = UDim2.new(0.1053719, 109, 0.00999999978, 32)
	tabButton.Font = Enum.Font.JosefinSans
	tabButton.Text = "Example"
	tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	tabButton.TextSize = 14.000

	UICorner_3.Parent = tabButton

	tabListing.Name = "tabListing"
	tabListing.Parent = allTabs
	tabListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
	tabListing.SortOrder = Enum.SortOrder.LayoutOrder
	tabListing.Padding = UDim.new(10, 10)

	allPages.Name = "allPages"
	allPages.Parent = MainWindow
	allPages.Active = true
	allPages.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	allPages.Position = UDim2.new(0.246234685, 0, 0.13059701, 0)
	allPages.Size = UDim2.new(0.742856085, 0, 0.835821033, 0)
	allPages.ScrollBarThickness = 4

	optionsCorner.CornerRadius = UDim.new(0, 100)
	optionsCorner.Name = "optionsCorner"
	optionsCorner.Parent = allPages

	pagesFolder.Name = "pagesFolder"
	pagesFolder.Parent = allPages

	newPage.Name = "newPage"
	newPage.Parent = allPages
	newPage.Active = true
	newPage.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	newPage.Size = UDim2.new(0, 408, 0, 224)
	newPage.ScrollBarThickness = 4

	elementsListing.Name = "elementsListing"
	elementsListing.Parent = newPage
	elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
	
	local TabHandler = {}
	
	function TabHandler:CreateTab(tabname)
		tabname = tabname or "New Tab"
		local tabButton = Instance.new("TextButton")
		local tabCorner = Instance.new("UICorner")
		local newPage = Instance.new("ScrollingFrame") 
		local elementsListing = Instance.new("UIListLayout") 

		tabButton.Name = "tabButton"
		tabButton.Parent = allTabs
		tabButton.BackgroundColor3 = Color3.fromRGB(115, 49, 37)
		tabButton.Size = UDim2.new(0, 99, 0, 25)
		tabButton.Font = Enum.Font.JosefinSans
		tabButton.Text = tabname -- Displays our custom text
		tabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		tabButton.TextSize = 14.000
		tabButton.AutoButtonColor = false   
		tabButton.MouseButton1Click:Connect(function()
			for i,v in next, pagesFolder:GetChildren() do -- We get all the pages that we added
				v.Visible = false   -- then we make them invisible 
			end 
			newPage.Visible = true  -- We make current page visible but not others

			--Animations Below  -- Optional
			for i,v in next, allTabs:GetChildren() do   -- We get all the elements inside the frame
				if v:IsA("TextButton") then -- We can't animate UIListLayout, so we check if its a TextButton
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(115, 49, 37) -- We animate other Tab Buttons and making the current one seem Checked
					}):Play()
				end
			end
			game.TweenService:Create(tabButton, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				BackgroundColor3 = Color3.fromRGB(255, 109, 83) -- We animate other Tab Buttons and making the current one seem Checked
			}):Play()
		end)

		tabCorner.CornerRadius = UDim.new(0, 3)
		tabCorner.Name = "sideCorner"
		tabCorner.Parent = tabButton

		newPage.Name = "newPage"
		newPage.Parent = pagesFolder
		newPage.Active = true
		newPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		newPage.BackgroundTransparency = 1.000
		newPage.Size = UDim2.new(1, 0, 1, 0)
		newPage.ScrollBarThickness = 5

		elementsListing.Name = "elementsListing"
		elementsListing.Parent = newPage
		elementsListing.HorizontalAlignment = Enum.HorizontalAlignment.Center
		elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
		elementsListing.Padding = UDim.new(0, 5)

	end

	return TabHandler
	
end

return WindowTable
