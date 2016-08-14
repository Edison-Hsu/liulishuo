class CreateMessages < ActiveRecord::Migration[5.0]
  def up
    create_table :messages do |t|
      t.integer :sender_id, null: false
      t.integer :receiver_id, null: false

      t.string :content, limit: 1024
      t.string :status, limit: 128, default: "unread"

      t.datetime :deleted_at, null: true
      t.timestamps

      t.index [:deleted_at, :sender_id, :receiver_id, :created_at], name: 'index'
    end
  end

  def down
    drop_table :messages
  end
end
