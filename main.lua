local library = {}

--local Utility = game:GetService("HttpService"):GetAsync('https://raw.githubusercontent.com/Holdigen/Random-Scripts/main/Utility')

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
	AimCentralUI.Parent = game.CoreGui
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
					--Utility:Tween(v, pagetweenspeed, {BackgroundTransparency = 1})
					--Utility:Tween(v.TabButtonName, pagetweenspeed, {TextTransparency = 0.550})
				end
			end
			for i, v in pairs(Pages:GetChildren()) do
				v.Visible = false
			end
			--Utility:Tween(TabButton, pagetweenspeed, {BackgroundTransparency = 0})
			--Utility:Tween(TabButtonName, pagetweenspeed, {TextTransparency = 0.2})
			Page.Visible = true
		end)

		Pages:FindFirstChild("Page").Visible = true
		--Utility:Tween(TabHolder:FindFirstChild("TabButton"), pagetweenspeed, {BackgroundTransparency = 0})
		--Utility:Tween(TabHolder:FindFirstChild("TabButton").TabButtonName, pagetweenspeed, {TextTransparency = 0.2})

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
			
			return Container
			
		end
		
		return Components
		
	end
	
	return TabHandler
	
end
return library
