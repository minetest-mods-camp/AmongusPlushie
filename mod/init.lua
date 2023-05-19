minetest.register_node("amogus:amongy", {
    description = "This looks...kinda sus",
    drawtype = "mesh",
    mesh = "Amongus.obj",
    tiles = {"amongy3D.png"},
    paramtype2 = "facedir",
    selection_box = {
        type= "fixed",
        fixed = {-0.3, -0.46, -0.4, 0.3, 0.3, 0.3}
    },
    collision_box = {
        type = "fixed",
         fixed = {-0.3, -0.46, -0.4, 0.3, 0.3, 0.3},
      },
    inventory_image = "amongy.png",

    groups = {cracky = 3}
})

minetest.register_craft({
    type = "shaped",
    output =  "amogus:amongy 1",
    recipe = {
        {"", "wool:red", "wool:blue"},
        {"wool:red", "wool:red", "firwool:red"},
        {"", "wool:red", "wool:red"}
    }
})