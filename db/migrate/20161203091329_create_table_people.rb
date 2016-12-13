class CreateTablePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.boolean :payed, default: false
      t.integer :tel_number
      t.timestamps
     end
  end
end
