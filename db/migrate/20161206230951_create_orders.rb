class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :product, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
