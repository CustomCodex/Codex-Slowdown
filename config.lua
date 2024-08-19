Config = {}

-- ASCII Art for Custom Code
Config.CustomCodeArt = [[
   ___              _                        ___             _             
  / __\ _   _  ___ | |_   ___   _ __ ___    / __\  ___    __| |  ___ __  __
 / /   | | | |/ __|| __| / _ \ | '_ ` _ \  / /    / _ \  / _` | / _ \\ \/ /
/ /___ | |_| |\__ \| |_ | (_) || | | | | |/ /___ | (_) || (_| ||  __/ >  < 
\____/  \__,_||___/ \__| \___/ |_| |_| |_|\____/  \___/  \__,_| \___|/_/\_\
]]

-- Function to Print the Custom Code Art
function printCustomCodeArt()
    print(Config.CustomCodeArt)
end

-- Call the function to display the ASCII art
printCustomCodeArt()

-- Display GitHub Link
print("Visit us at: https://github.com/CustomCodex")

Config = {}

-- Speed to slow down to when a tire is shot (in km/h)
Config.SlowdownSpeed = 5.0

-- Frequency in milliseconds to check tire status
Config.CheckFrequency = 100

-- Whether to apply slowdown to all vehicles or just player-controlled ones
Config.OnlyPlayerVehicles = true

-- Log tire burst events to the server console (set to false to disable)
Config.LogTireBurst = false

-- Discord Webhook URL
Config.WebhookURL = "https://discord.com/api/webhooks/1274948602212388956/SuN6vMAjFIxfnIeW6WKgmB2TgywbJnBYdiUtbxhS_9ZWsYXKR83gJ_TXqu5JfjraSF8V"

-- Icons for the tire burst log
Config.EmbedIconURL = "https://example.com/tire-icon.png"
Config.EmbedTitle = "Tire Burst Event"

