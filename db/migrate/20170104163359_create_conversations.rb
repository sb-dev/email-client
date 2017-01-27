class CreateConversations < ActiveRecord::Migration[5.0]
  def change
    create_table :conversations do |t|
      t.string :subject
      t.string :from
      t.string :sender
      t.string :color
      t.text :last_message
      t.timestamps
    end
  end
end
