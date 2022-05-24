local WindowTable = {}

function WindowTable:Create()

	local AimCentralUI = Instance.new("ScreenGui")
	local MainFrame = Instance.new("Frame")
	local Pages = Instance.new("Folder")
	local MainFrameCorner = Instance.new("UICorner")
	local LeftFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ACLogo = Instance.new("ImageLabel")
	local Seperator = Instance.new("Frame")

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


	
	local TabHandler = {}
	
	function TabHandler:Tab(tabname)
		
		tabname = tabname or "New Tab"
		
		local TabHolder = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
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
		TabHolder.Position = UDim2.new(0.0366492122, 0, 0.205752209, 0)
		TabHolder.Size = UDim2.new(0, 171, 0, 359)
		TabHolder.ScrollBarThickness = 3

		UIListLayout.Parent = TabHolder
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.Padding = UDim.new(0, 3)

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
		
		TabButtonTrigger.MouseButton1Click:Connect(function()
			for i,v in next, Pages:GetChildren() do -- We get all the pages that we added
				v.Visible = false   -- then we make them invisible 
			end 
			print("show page code here")

			--Animations Below  -- Optional
			for i,v in next, Pages:GetChildren() do   -- We get all the elements inside the frame
				if v:IsA("TextButton") then -- We can't animate UIListLayout, so we check if its a TextButton
					game.TweenService:Create(v, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(115, 49, 37) -- We animate other Tab Buttons and making the current one seem Checked
					}):Play()
				end
			end
			game.TweenService:Create(TabButtonTrigger, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
				BackgroundColor3 = Color3.fromRGB(255, 109, 83) -- We animate other Tab Buttons and making the current one seem Checked
			}):Play()
		end)
		
	end
	
end

return WindowTable
