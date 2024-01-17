class CreateOrderables < ActiveRecord::Migration[7.1]
  def change
    create_table :orderables do |t|
      t.integer :quantity
      t.belongs_to :product, null: false, foreign_key: true
      t.belongs_to :cart, null: false, foreign_key: true
      t.decimal :unit_price

      t.timestamps
    end
  end
end
