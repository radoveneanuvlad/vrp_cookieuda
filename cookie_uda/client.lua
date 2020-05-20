--Made by cookie vtm WXcookiE--

local coordonate = {
    {-488.9875793457, 5776.8051757813, 45.154369354248},
    {-475.92651367188, 5786.4775390625, 48.910209655762},
    {-471.84631347656, 5792.8315429688, 50.006954193115},
    {-453.24127197266, 5798.14453125, 51.570419311523},
    {-445.82806396484, 5801.8344726563, 52.236480712891},
    {-448.35745239258, 5807.4438476563, 50.943939208984}
}

Citizen.CreateThread(
    function()
        while true do
            local ped = GetPlayerPed(-1)
            local coords = GetEntityCoords(ped)
            for k, v in pairs(coordonate) do
                local cookie_distance = GetDistanceBetweenCoords(coords.x, coords.y, coords.z, v[1], v[2], v[3], true)
                if cookie_distance < 15 then
                    DrawMarker(
                        3,
                        v[1],
                        v[2],
                        v[3],
                        0,
                        0,
                        0,
                        0,
                        0,
                        0,
                        0.5001,
                        0.5001,
                        0.5001,
                        147,
                        147,
                        147,
                        100,
                        0,
                        0,
                        0,
                        1,
                        0,
                        0,
                        0
                    )
                    if cookie_distance < 3 then
                        text(
                            "~r~Apasa ~INPUT_CONTEXT~ pentru a uda pamantul sa creasca pomi fructiferi" ..
                                "Atentie! Ai nevoie de apa"
                        )
                        if IsControlJustPressed(0, 38) then
                            TaskStartScenarioInPlace(ped, "WORLD_HUMAN_GARDENER_PLANT", 0, true)
                            TriggerServerEvent("cookie:pomi_fructiferi")
                            Wait(15000)
                            ClearPedTasks(ped)
                        end
                    end
                end
            end
        end
    end
)
