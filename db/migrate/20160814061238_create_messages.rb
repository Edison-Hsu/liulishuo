class CreateMessages < ActiveRecord::Migration[5.0]
  def up
    create_table :messages do |t|
      t.integer :sender, null: false
      t.integer :receiver, null: false

      t.string :content, limit: 1024

      t.datetime :deleted_at, null: true
      t.timestamps

      t.index [:deleted_at, :sender, :receiver, :created_at], name: 'index1'
      t.index [:deleted_at, :receiver, :sender, :created_at], name: 'index2'
    end
  end

  def down
    drop_table :messages
  end
end
