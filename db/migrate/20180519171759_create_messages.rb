class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|

      t.integer :sender_id
      t.integer :sended_id
      t.string :content

      t.timestamps
    end
    add_index :messages, :sender_id
    add_index :messages, :sended_id
  end
end
