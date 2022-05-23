local WindowTable = {}

local CoreGui = game:GetService("CoreGui")

function WindowTable:Create(hubName)

	hubName = hubName or "didnt work"
	
	local AimCentralUI = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Pages = Instance.new("Folder")
	local MainFrameCorner = Instance.new("UICorner")
	local LeftFrame = Instance.new("Frame")
	local LeftFrameCorner = Instance.new("UICorner")
	local DragInput = Instance.new("Frame")
	local HubName = Instance.new("TextLabel")
	local GameName = Instance.new("TextLabel")
	local LeftDiv = Instance.new("Frame")



	AimCentralUI.Name = "AimCentralUI"
	AimCentralUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	AimCentralUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = AimCentralUI
	MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	MainFrame.Position = UDim2.new(0.312037647, 0, 0.251548946, 0)
	MainFrame.Size = UDim2.new(0, 619, 0, 370)

	Pages.Name = "Pages"
	Pages.Parent = MainFrame

	MainFrameCorner.Name = "MainFrameCorner"
	MainFrameCorner.Parent = MainFrame

	LeftFrame.Name = "LeftFrame"
	LeftFrame.Parent = MainFrame
	LeftFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	LeftFrame.Size = UDim2.new(0, 138, 0, 370)

	LeftFrameCorner.CornerRadius = UDim.new(0, 3)
	LeftFrameCorner.Name = "LeftFrameCorner"
	LeftFrameCorner.Parent = LeftFrame

	DragInput.Name = "DragInput"
	DragInput.Parent = LeftFrame
	DragInput.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	DragInput.BorderSizePixel = 0
	DragInput.Size = UDim2.new(0, 138, 0, 67)

	HubName.Name = "HubName"
	HubName.Parent = LeftFrame
	HubName.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	HubName.BorderSizePixel = 0
	HubName.Size = UDim2.new(0, 138, 0, 35)
	HubName.Font = Enum.Font.JosefinSans
	HubName.Text = hubName
	HubName.TextColor3 = Color3.fromRGB(255, 255, 255)
	HubName.TextSize = 14.000

	GameName.Name = "GameName"
	GameName.Parent = LeftFrame
	GameName.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
	GameName.BorderSizePixel = 0
	GameName.Position = UDim2.new(0, 0, 0.0945945978, 0)
	GameName.Size = UDim2.new(0, 138, 0, 23)
	GameName.Font = Enum.Font.JosefinSans
	GameName.Text = "Pet Sim X"
	GameName.TextColor3 = Color3.fromRGB(171, 171, 171)
	GameName.TextSize = 14.000

	LeftDiv.Name = "LeftDiv"
	LeftDiv.Parent = LeftFrame
	LeftDiv.BackgroundColor3 = Color3.fromRGB(72, 73, 75)
	LeftDiv.BorderSizePixel = 0
	LeftDiv.Position = UDim2.new(0, 0, 0.086756736, 0)
	LeftDiv.Size = UDim2.new(0, 137, 0, 1)


	
	local TabHandler = {}
	
	function TabHandler:Tab(tabName)
		
		tabName = tabName
		
		print("tabname is ", tabName)
		
		local Page = Instance.new("ScrollingFrame")
		local PageList = Instance.new("UIListLayout")
		local Section = Instance.new("Frame")
		local SectionCorner = Instance.new("UICorner")
		local SectionItemList = Instance.new("UIListLayout")
		local TabHolder = Instance.new("ScrollingFrame")
		local TabHolderList = Instance.new("UIListLayout")
		local TabButton = Instance.new("Frame")
		local TabButtonCorner = Instance.new("UICorner")
		local TabButtonName = Instance.new("TextLabel")
		local TabButtonTrigger = Instance.new("TextButton")
		
		TabHolder.Name = "TabHolder"
		TabHolder.Parent = LeftFrame
		TabHolder.Active = true
		TabHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabHolder.BackgroundTransparency = 1.000
		TabHolder.BorderSizePixel = 0
		TabHolder.Position = UDim2.new(0.0579710156, 0, 0.181081086, 0)
		TabHolder.Size = UDim2.new(0, 129, 0, 296)
		TabHolder.ScrollBarThickness = 3

		TabHolderList.Name = "TabHolderList"
		TabHolderList.Parent = TabHolder
		TabHolderList.SortOrder = Enum.SortOrder.LayoutOrder
		TabHolderList.Padding = UDim.new(0, 3)

		TabButton.Name = "TabButton"
		TabButton.Parent = TabHolder
		TabButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		TabButton.Size = UDim2.new(0, 120, 0, 28)

		TabButtonCorner.CornerRadius = UDim.new(0, 4)
		TabButtonCorner.Name = "TabButtonCorner"
		TabButtonCorner.Parent = TabButton

		TabButtonName.Name = "TabButtonName"
		TabButtonName.Parent = TabButton
		TabButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.BackgroundTransparency = 1.000
		TabButtonName.Size = UDim2.new(0, 120, 0, 28)
		TabButtonName.Font = Enum.Font.JosefinSans
		TabButtonName.Text = tabName
		TabButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonName.TextSize = 14.000

		TabButtonTrigger.Name = "TabButtonTrigger"
		TabButtonTrigger.Parent = TabButton
		TabButtonTrigger.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
		TabButtonTrigger.BackgroundTransparency = 1.000
		TabButtonTrigger.BorderSizePixel = 0
		TabButtonTrigger.Size = UDim2.new(0, 120, 0, 28)
		TabButtonTrigger.Font = Enum.Font.JosefinSans
		TabButtonTrigger.Text = ""
		TabButtonTrigger.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButtonTrigger.TextSize = 14.000

		Page.Name = "Page"
		Page.Parent = MainFrame
		Page.Active = true
		Page.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
		Page.BackgroundTransparency = 1.000
		Page.BorderSizePixel = 0
		Page.Position = UDim2.new(0.237479806, 0, 0.0189189184, 0)
		Page.Size = UDim2.new(0, 464, 0, 355)
		Page.ScrollBarThickness = 3

		PageList.Name = "PageList"
		PageList.Parent = Page
		PageList.SortOrder = Enum.SortOrder.LayoutOrder

		Section.Name = "Section"
		Section.Parent = Page
		Section.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
		Section.Size = UDim2.new(0, 458, 0, 551)

		SectionCorner.CornerRadius = UDim.new(0, 5)
		SectionCorner.Name = "SectionCorner"
		SectionCorner.Parent = Section

		SectionItemList.Name = "SectionItemList"
		SectionItemList.Parent = Section
		SectionItemList.HorizontalAlignment = Enum.HorizontalAlignment.Center
		SectionItemList.SortOrder = Enum.SortOrder.LayoutOrder
		SectionItemList.Padding = UDim.new(0, 2)
		
	end
	
	return TabHandler
	
end

return WindowTable
