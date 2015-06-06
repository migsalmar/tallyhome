class AddPicToItems < ActiveRecord::Migration
  def change
    add_column :items, :picture2, :string
  end
end
