class AddLinkToHouses < ActiveRecord::Migration
  def change
    add_column :houses, :link, :string
  end
end
