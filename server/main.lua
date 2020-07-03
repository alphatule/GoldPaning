VORP = exports.vorp_inventory:vorp_inventoryApi()



Citizen.CreateThread(function()
	Citizen.Wait(2000)
	VORP.RegisterUsableItem("goldpan", function(data)
		TriggerClientEvent('goldpanner:StartPaning', data.source)
		TriggerClientEvent("vorp:TipBottom", data.source, "Buscando oro...", 20000) 
	end)
end)


RegisterNetEvent("search")
AddEventHandler("search", function()
    local item = "goldnugget"
    local r = math.random(1,10)
    local _source = source 
    if r < 3 then
        VORP.addItem(_source, item,math.random(1,3))
        TriggerClientEvent("vorp:TipBottom", _source, "Has encontrado algo de oro", 6000)
    else
        TriggerClientEvent("vorp:TipBottom", _source, "No has encontrado nada", 6000)
    end
end)

