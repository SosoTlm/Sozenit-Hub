-- POWERED BY ZENTRIX LIBRARY (THE (--) IN THE SCRIPT ARE IN THE LIBRARY SOURCE --

local library
	if game:GetService("RunService"):IsStudio() then
		library = require(game:GetService("ReplicatedStorage").ModuleScript)
	else
	library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Iliankytb/Iliankytb/main/Zentrix"))()
		end
library:CreateWindow({
	Title = "Sozenit (Powered by Zentrix)",-- Title of the script
	Theme = "BlueNeon",--View more theme in my dicord server!
	Icon = 0,-- 0 = no icon or add number
	Intro = true,--Intro or no
	IntroTitle = "Sozeniting Your Hub...",--the intro title
	KeyPC = Enum.KeyCode.C,--the key for pc for Open/close the frame
	Data = {
		EnableSavingData = true,--Enabling data saver or no
		DisableNotifyingLoadedData = false,--set it to true for disable the notify when loaded data
		FolderName = "Sozenit Saves",--Folder Name,you can change it
		FileName = "user_data",-- File name for the data saver,you can change it
	},
	Discord = {
		Enabled = true,--enable to copy the discord
		DiscordLink = "https://discord.gg/CTNRfJhbuU",-- put thr entire Link of discord
		RememberJoin = true,-- Set this ti false to make them copy the link every time they load the script
		Duration = 10,-- 5 is the default you can change the number only for remember join
	},
	KeySystem = true,--Key System or no
	KeySettings = {
		Title = "Sozenit Key",--Title of the key(just like that)
		Note = "Join discord for key",-- The method for obtaining
		FileName = "user_key",-- File name or no for saving the key
		SaveKey = true,-- saving the key or no
		GrabKeyFromSite = false,--Coming soon
		Key = {"SZNIT_9864R-65A00-09KKF-POOPIS"},-- the name you can add many name, Exemple "Key","Key2" or you can add a function to add key but i don't really know
		AddGetKeyButton = false,
		AddDiscordButton = true,
		DiscordLink = "https://discord.gg/CTNRfJhbuU",
		GetKeyLink = "NoKeyLink",
	},
}, function(window)
	local tab = window:CreateTab("Home",0)-- Tabs , 0 = no icon or add number
	local Notiftab = window:CreateTab("Notifications",0)-- Tabs , 0 = no icon or add number
	local ShowButton = window:CreateTab("Show Button",0)-- Tabs , 0 = no icon or add number
	local ResetPositionShowButtonTab = window:CreateTab("Reset Position Show Button",0)-- Tabs , 0 = no icon or add number
	local DiscordTab = window:CreateTab("Discord",0)-- Tabs , 0 = no icon or add number

	--Text--
	local Text = tab:AddText({
		Text = "Welcome",
		Name = "Text"
	})
	--Buttons--
	local Button = tab:AddButton({
		Text = "This is a button",
		Name = "Button",
		Callback = function() 
			
		end
	})
	--Buttons--
	local Button = ResetPositionShowButtonTab:AddButton({
		Text = "Reset Position Button",
		Name = "Button3",
		Callback = function() 
			window:ResetShowButtonPosition()
		end
	})
	local Button = Notiftab:AddButton({
		Text = "Hi",
		Name = "Tes button",
		Callback = function() 	
			local Notif = window:Notify({
				Title = "In Work",
				Message = "err",
				Duration = 10,
			})

		end
	})
	local ButonDiscordLink = DiscordTab:AddButton({
		Text = "Discord Link",
		Name = "Join",
		Callback = function() 	
			library:CopyText("https://discord.gg/CTNRfJhbuU")
		end
	})
	--Toggle--
	local Toggle = tab:AddToggle({
		Text = "This is a Toggle",
		Name = "Toggle",
		Flag = "Toggle",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)

		end
	})
	--Toggle--
	local ShowOpenButton = ShowButton:AddToggle({
		Text = "Lock Show Button",
		Name = "ULShowButton",
		Flag = "Toggle2",--Put a name flag for save data if you enabled saving data
		Default = false,
		Callback = function(state)
			if state then
				window:LockButton()
			else
				window:UnlockButton()
			end
		end
	})

	--Color Picker--
	local ColorPicker = tab:AddColorPicker({
		Text = "This is a color picker",
		Name = "Color picker",
		Color = Color3.new(255, 255, 255),
		Flag = "ColorPicker",--Put a name flag for save data if you enabled saving data
		Callback = function(val)

		end
	})



	--Paragraph--
	local Paragraph = tab:AddParagraph({
		Title = "Updates",
		Content = "This hub is in huge developement, execpt bugs and missing features",
		Name = "Info"
	})

	--Slider--
	local Slider = tab:AddSlider({
		Name = "Placeholder",
		Min = 0,
		Max = 100,
		Default = 0,
		Flag = "Slider",--Put a name flag for save data if you enabled saving data
		Callback = function(val)

		end
	})

	--Textbox--
	local TextBox = tab:AddTextbox({
		Text = "Placeholder",
		Name = "TextBox",
		Placeholder = "This is a TextBox",
		Flag = "Textbox",--Put a name flag for save data if you enabled saving data
		Callback = function(text)

		end
	})

	--Dropdown--
	local Dropdown = tab:AddDropdown({
		Text = "Placeholder",
		Name = "Dropdown",
		Options = {"Option 1", "Option 2", "Option 3"},
		Default = "PLACEHOLDER",
		MultiSelect = true,
		Flag = "DropdownPPlaceholder", --Put a name flag for save data if you enabled saving data
		Callback = function(choice)

		end
	})
	local ChangeThemeDropdown = tab:AddDropdown({
		Text = "Change Theme:",
		Name = "Dropdown2",
		Options = {"Default", "Light", "RedDark","BlueNeon","GreenMatrix","PurpleDream","Sunset",
		"Ocean","Toxic","Storm","LimePop","Cyber","Chocolate","RoseGold","CottonCandy","NightSky","Steel",
			"GoldLux","Ice","TealWave","FrostFire","DarkMatter","Lava","PinkCandy","Sakura","DeepSpace","Skyline","Crimson"
			,"Desert","Camo","Plasma","Arctic","Slate","Vaporwave"
			
		},
		Default = "BlueNeon",
		MultiSelect = false,
		Flag = "ThemesFFlag", --Put a name flag for save data if you enabled saving data
		Callback = function(choice)
window:ChangeTheme(choice)
		end
	})

	--notif--
	local Notif = window:Notify({
		Title = "Hi",
		Message = "This button is currently unavailable",
		Duration = 5,
	})

	--Loading Data--
	library:LoadData()--Add this if you want to load data and everytime at bottom of your code
end)
