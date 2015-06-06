class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :picture
      t.text :notes
      t.text :color
      t.float :price
      t.integer :quantity
      t.text :model_sn
      t.text :name

      t.timestamps

    end
  end
end
