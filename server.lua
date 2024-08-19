ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local function sendToDiscord(title, description, color, icon)
    local embed = {
        {
            ["title"] = title,
            ["description"] = description,
            ["color"] = color,
            ["thumbnail"] = {
                ["url"] = icon
            },
            ["footer"] = {
                ["text"] = os.date("%Y-%m-%d %H:%M:%S")
            }
        }
    }

    PerformHttpRequest(Config.WebhookURL, function(err, text, headers) end, 'POST', json.encode({username = "Tire Burst Logger", embeds = embed}), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent('codex-slowdown:logTireBurst')
AddEventHandler('codex-slowdown:logTireBurst', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer then
        local playerName = xPlayer.getName()
        local identifier = xPlayer.getIdentifier()
        local message = ("Player **%s** (`%s`) had a tire burst on their vehicle."):format(playerName, identifier)

        sendToDiscord(Config.EmbedTitle, message, 16711680, Config.EmbedIconURL)
    end
end)


print("\27[32mCodex-Slowdown has successfully started\27[0m")