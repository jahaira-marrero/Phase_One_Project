class DogFoodCategory < ActiveRecord::Base
    # add associatons!
    belongs_to :categories 
    belongs_to :food_options 
    has_many :dogs, through: :categories
  end

 