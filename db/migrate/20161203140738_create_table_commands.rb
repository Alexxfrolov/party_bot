class CreateTableCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.string :name
      t.string :action_class
      t.string :params, default: false
    end
  end
end
