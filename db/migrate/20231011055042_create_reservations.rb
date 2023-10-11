class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.string :name,    null: false, default: ''
      t.string :phone,   null: false, default: ''
      t.date :resdate,   null: false, default: '00/00/0000' 
      t.time :restime,   null: false, default: '00.00'
      t.integer :people, default: 0

      t.timestamps
    end
  end
end
