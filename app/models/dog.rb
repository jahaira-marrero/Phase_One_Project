class Dog < ActiveRecord::Base
  # add associatons!
  belongs_to :user
  belongs_to :category
  has_many :dog_food_categories, through: :categories
end
