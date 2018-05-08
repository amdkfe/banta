class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text     "content"
      t.integer  "room_id"
      t.integer  "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      # t.index ["user_id"], name: "index_messages_on_user_id"
      # t.index ["room_id"], name: "index_messages_on_room_id"

      t.references :room, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
