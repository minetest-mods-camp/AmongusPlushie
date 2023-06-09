COLORS = {
    "red", "blue", "cyan", "grey", "pink", "black", "brown", "green",
    "white", "orange", "purple", "yellow", "magenta", "dark_grey", "dark_green"
}

for i = 1, #COLORS do
    minetest.register_node("amogus:" .. COLORS[i] .. "amongy", {
        description = "This looks...kinda sus",
    drawtype = "mesh",
        mesh = "Amongus.obj",
        tiles = {COLORS[i] .. "_amongy_model.png"},
        paramtype2 = "facedir",
        paramtype = "light",
	    sunlight_propagates = true,
        selection_box = {
            type= "fixed",
            fixed = {-0.3, -0.46, -0.4, 0.3, 0.3, 0.3}
        },
        collision_box = {
            type = "fixed",
            fixed = {-0.3, -0.46, -0.4, 0.3, 0.3, 0.3}
        },
        inventory_image = COLORS[i] .. "_amongy.png",
        is_ground_content = false,
        groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
        flammable = 3, wool = 1}
    })
end

------------------------------------------------------------

for i = 1, #COLORS do
    minetest.register_craft({
        type = "shaped",
        output =  "amogus:" .. COLORS[i] .. "amongy 1",
        recipe = {
            {"", "wool:".. COLORS[i], "wool:blue"},
            {"wool:" .. COLORS[i], "wool:" .. COLORS[i], "wool:" .. COLORS[i]},
            {"", "wool:" .. COLORS[i], "wool:" .. COLORS[i]}
        }
    })
end
