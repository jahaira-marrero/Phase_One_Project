class RemoveSensitiveFromCategory < ActiveRecord::Migration[5.2]
  def change
    remove_column :categories, :sensitive
  end
end
