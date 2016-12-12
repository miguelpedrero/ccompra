class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :cart, index: true, foreign_key: true
      t.integer :price

      t.timestamps null: false
    end
  end
end
