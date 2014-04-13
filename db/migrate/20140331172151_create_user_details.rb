class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :dob
      t.string :mobile
      t.references :user

      t.timestamps
    end
    #add_index :user_details
  end
end
