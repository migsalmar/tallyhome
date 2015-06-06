class AddPicToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :picture1, :string
  end
end
