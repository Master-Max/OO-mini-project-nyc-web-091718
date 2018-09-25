class Recipe
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def self.most_popular
    # should return the recipe instance with the highest number
    # of users (the recipe that has the most recipe cards)
    # best_food = nil
    # best_food_count = 0
    # RecipeCard.all.each do |r|
    #   count = 0
    #   RecipeCard.all.each do |f|
    #     if r == f
    #       count += 1
    #     end
    #   end
    #   if count > best_food_count
    #     best_food = r
    #     best_food_count = count
    #   end
    # end
    # best_food
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def users
    recipes = RecipeCard.all.select {|rc| rc.recipe == self}
    recipes.map {|r| r.user}
  end

  def ingredients
    ingredients = RecipeIngredient.all.select {|ri| ri.recipe == self}
    ingredients.map {|i| i.ingredient}
    #should return all of the ingredients in this recipe
  end

  def allergens
    #binding.pry
    bad_ingredients = Allergen.all.map {|a| a.ingredient}
    self.ingredients.select do |i|
      #binding.pry
      bad_ingredients.include? i
    end
    # self.ingredients.select do |ingredient|
    #   .include?()

    #should return all of the ingredients in this recipe
    #that are allergens
  end

  def add_ingredients(ingredients)
    ingredients.each do |ing|
      RecipeIngredient.new(self, ing)
    end
  end
end
