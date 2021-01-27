class RemoveDogIdFromCatogory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :dog_id
  end
end
