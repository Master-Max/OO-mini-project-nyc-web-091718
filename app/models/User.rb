class User
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def recipes
    rec_cards = RecipeCard.all.select {|rc| rc.user == self}
    rec_cards.map {|r| r.recipe}
  end

  def add_recipe_card(recipe, rating, date)
    RecipeCard.new(self, recipe, rating, date)
  end

  def declare_allergen(allergen)
    Allergen.new(self, allergen)
  end

  def allergens
    algs = Allergen.all.select { |a| a.user == self }
    algs.map { |a| a.ingredient }
  end

  def top_three_recipes
    #binding.pry
    rec_cards = RecipeCard.all.select {|rc| rc.user == self}
    #binding.pry
    sorted_cards = rec_cards.sort_by {|a| a.rating}
    sorted_cards.map {|s| s.recipe}[-3..-1].reverse
  end

  def most_recent_recipe
    self.recipes.last
  end

end
