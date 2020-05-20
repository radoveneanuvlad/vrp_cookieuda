--Made by cookie vtm WXcookiE--

local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

local money1 = math.random(20, 35)

RegisterServerEvent("cookie:pomi_fructiferi")
AddEventHandler(
    "cookie:pomi_fructiferi",
    function()
        local user_id = vRP.getUseId({source})
        local player = vRP.getUserSource({user_id})
        vRPclient.notify(player, {"~p~Ai udat ~o~pamantul!"})
        vRP.giveMoney({user_id, money1})
        vRPclient.notify(player, {GetPlayerName(source) .. "Ai primit" .. money1 .. "bani pentru actiuniile tale"})
    end
)
