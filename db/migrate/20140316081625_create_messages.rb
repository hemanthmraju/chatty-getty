class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :text_message
      t.references :user
      t.references :channel
      t.timestamps
    end
    add_index :messages, :user_id
  end
end
