class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :total_amount
      t.string :statu
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
