class RecipeCard
  attr_reader :date, :user, :recipe, :rating
  @@all = []



  def self.all
    @@all
  end

  def initialize(user, recipe, rating, date)
    @user = user
    @recipe = recipe
    @rating = rating
    @date = date
    @@all << self
  end
end
