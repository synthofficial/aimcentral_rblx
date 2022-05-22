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
		elementsPadding.PaddingLeft = UDim.new(0, 5)
		
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
		elementsListing.SortOrder = Enum.SortOrder.LayoutOrder
		
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
		return ElementHandler
	end
	
	return TabHandler
	
end

return WindowTable
