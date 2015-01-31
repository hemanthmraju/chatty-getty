class AddUserPhotoToUserDetails < ActiveRecord::Migration
  def self.up
    add_attachment :user_details, :avatar
  end

  def self.down
    remove_attachment :user_details, :avatar
  end
end
