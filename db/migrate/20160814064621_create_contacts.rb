class CreateContacts < ActiveRecord::Migration[5.0]
  def up
    create_table :contacts do |t|
      t.integer :owner, null: false
      t.integer :contacter, null: false

      t.datetime :deleted_at, null: true
      t.timestamps

      t.index [:deleted_at, :owner]
    end
  end

  def down
    drop_table :contacts
  end
end
