class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name,        null: false, default: ''
      t.text :description,   default: ''
      t.decimal :price,      null: false, default: 0.0
      t.boolean :veg,        default: false
      t.boolean :available,  default: true
      t.boolean :featured,   default: false

      t.timestamps
    end
  end
end
