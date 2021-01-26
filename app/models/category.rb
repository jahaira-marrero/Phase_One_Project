class Category < ActiveRecord::Base
  # add associatons!
  has_many :dogs
  has_many :dog_food_categories
  has_many :users, through: :dogs
  has_many :food_options, through: :dog_food_categories
end
