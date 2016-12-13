class AddChatIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chat_id, :integer unless column_exists? :users, :chat_id
  end
end
