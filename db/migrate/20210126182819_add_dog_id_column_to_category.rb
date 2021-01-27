class AddDogIdColumnToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :dog_id, :integer
  end
end
