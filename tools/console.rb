require_relative '../config/environment.rb'

i1 = Ingredient.new("Tomato")
i2 = Ingredient.new("Cheese")
i3 = Ingredient.new("Bread")
i4 = Ingredient.new("Noodles")

u1 = User.new("name1")
u2 = User.new("name2")
u3 = User.new("Bill")

u2.declare_allergen(i2)
u2.declare_allergen(i3)

r1 = Recipe.new("Pizza")
r2 = Recipe.new("Pasta")
r3 = Recipe.new("Spagettii")
r4 = Recipe.new("Calzone")

r1.add_ingredients([i1, i2, i3])
r2.add_ingredients([i1, i2, i4])
r3.add_ingredients([i1, i4])
r4.add_ingredients([i2, i3])

u1.add_recipe_card(r1, 5, "9/20/18")
u1.add_recipe_card(r2, 4, "9/23/18")
u1.add_recipe_card(r3, 2, "9/24/18")
u1.add_recipe_card(r4, 4, "9/27/18")

u2.add_recipe_card(r2, 1, "9/27/18")
u2.add_recipe_card(r4, 3, "9/27/18")

u3.add_recipe_card(r4, 3, "9/27/18")

# rc1 = RecipeCard.new(u1, r1, 5, "9/20/18")
# rc2 = RecipeCard.new(u1, r2, 4, "9/21/18")

binding.pry
