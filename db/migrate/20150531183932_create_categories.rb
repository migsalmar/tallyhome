class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.string :picture
      t.text :name

      t.timestamps

    end
  end
end
