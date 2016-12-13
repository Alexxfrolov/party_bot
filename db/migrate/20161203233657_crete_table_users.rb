class CreteTableUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.datetime :last_date, default: DateTime.now
      t.boolean :is_blocked, default: false
      t.belongs_to :person
      t.timestamps
  end
  end
end
