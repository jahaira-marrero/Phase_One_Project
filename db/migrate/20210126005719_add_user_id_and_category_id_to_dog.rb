class AddUserIdAndCategoryIdToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :user_id, :integer
    add_column :dogs, :category_id, :integer
  end
end
