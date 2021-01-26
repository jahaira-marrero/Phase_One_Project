class CreateDogFoodCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_food_categories do |t|
      t.integer :category_id
      t.integer :food_option_id
    end
  end
end
