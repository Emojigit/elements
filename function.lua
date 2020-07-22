elements = {}
function elements.register_metal(id,name)
    if type(name) == "nil" then
        name = "Metal type element "..tostring(id)
    end
    minetest.register_node("elements:element_"..tostring(id).."_metal_ore",{
        description = tostring(name).." ore",
        tiles = {},
        tiles = {"default_stone.png^elements_"..tostring(id).."_metal_ore.png"},
        groups = {cracky = 2},
        drop = "elements:element_"..tostring(id).."_metal_lump",
        sounds = default.node_sound_stone_defaults(),
    })
    minetest.register_craft({
        type = "cooking",
        recipe = "elements:element_"..tostring(id).."_metal_lump",
        output = "elements:element_"..tostring(id).."_metal_ingot",
        cooktime = 5
    })
    minetest.register_alias("elements:element_"..tostring(id), "elements:element_"..tostring(id).."metal_ingot")
    minetest.register_node("elements:element_"..tostring(id).."_metal_block", {
	    description = tostring(name).." Block",
	    tiles = {"elements_"..tostring(id).."_metal_block.png"},
    	is_ground_content = false,
  	    groups = {cracky = 1, level = 2},
    	sounds = default.node_sound_metal_defaults(),
    })
    minetest.register_craftitem("elements:element_"..tostring(id).."_metal_lump", {
        description = tostring(name).." Lump",
        inventory_image = "elements:element_"..tostring(id).."_metal_lump.png",
    })
    minetest.register_craftitem("elements:element_"..tostring(id).."_metal_ingot", {
        description = tostring(name).." Ingot",
        inventory_image = "elements:element_"..tostring(id).."_metal_ingot.png"
    })
    minetest.register_craft({
        output = "elements:element_"..tostring(id).."_metal_block",
        recipe = {
            {"elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot"},
            {"elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot"},
            {"elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot", "elements:element_"..tostring(id).."_metal_ingot"},
        }
    })
    minetest.register_craft({
        type = "shapeless",
        output = "elements:element_"..tostring(id).."_metal_ingot 9",
        recipe = {"elements:element_"..tostring(id).."_metal_block"},
    })
end

function elements.register_non_metal(id,name,radio)
    local image = ""
    if not(name) then
        name = "Element "..tostring(id)
    end
    if radio then
        image = "elements_radio^elements:element_"..tostring(id)..".png"
    else
        image = "elements:element_"..tostring(id)..".png"
    end
    minetest.register_craftitem("elements:element_"..tostring(id), {
        description = tostring(name).." Ingot",
        inventory_image = image
    })
end

function elements.register_element(id,name,metal,radio)
    if not(name) then
        if not(metal) then
            name = "Element "..tostring(id)
        end
    end
    if metal then
        elements.register_metal(id,name)
    else
        elements.register_non_metal(id,name,radio)
    end
end