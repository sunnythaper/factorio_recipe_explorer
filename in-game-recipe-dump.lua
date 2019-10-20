/c
lines = {}
for k, v in pairs(game.recipe_prototypes) do
  table.insert(lines, serpent.line({name=v.name, ingredients=v.ingredients, products=v.products, localised_name=v.localised_name, localised_description=v.localised_description, category=v.category, energy=v.energy, order=v.order, group=v.group, subgroup=v.subgroup, request_paste_multiplier=v.request_paste_multiplier, overload_multiplier=v.overload_multiplier, show_amount_in_title=v.show_amount_in_title, emissions_multiplier=v.emissions_multiplier}))
end

game.write_file("recipes", table.concat(lines, "\n"))
game.player.print(table.concat(lines, "\n"))
