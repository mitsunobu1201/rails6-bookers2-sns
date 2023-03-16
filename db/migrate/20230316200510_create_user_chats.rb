class CreateUserChats < ActiveRecord::Migration[6.1]
  def change
    create_table :user_chats do |t|
      t.integer :user_id
      t.integer :user_conversation
      t.text :message
      t.timestamps
    end
  end
end
