class FoodOption < ActiveRecord::Base
    # add associatons!
    has_many :dog_food_categories
    has_many :categories, through: :dog_food_categories
end
