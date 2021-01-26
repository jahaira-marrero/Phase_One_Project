class CreateFoodOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :food_options do |t|
      t.integer :dog_food_category_id
      t.boolean :small_puppy_sensitive
      t.boolean :medium_puppy_sensitive
      t.boolean :large_puppy_sensitive
      t.boolean :extra_large_puppy_sensitive
      t.boolean :small_young_adult_sensitive
      t.boolean :medium_young_adult_sensitive
      t.boolean :large_young_adult_sensitive
      t.boolean :extra_large_young_adult_sensitive
      t.boolean :small_adult_sensitive
      t.boolean :medium_adult_sensitive
      t.boolean :large_adult_sensitive
      t.boolean :extra_large_adult_sensitive     
      t.boolean :small_senior_sensitive
      t.boolean :medium_senior_sensitive
      t.boolean :large_senior_sensitive
      t.boolean :extra_large_senior_sensitive
    end
  end
end
