class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :stock
      t.string :photo
      t.integer :precio
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
