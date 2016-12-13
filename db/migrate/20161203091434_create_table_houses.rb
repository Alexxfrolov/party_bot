class CreateTableHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :host_name
      t.string :address
      t.boolean :main, default: false
      t.boolean :booked, default: false
      t.integer :host_number
      t.string :location
      t.timestamps
    end
  end
end
