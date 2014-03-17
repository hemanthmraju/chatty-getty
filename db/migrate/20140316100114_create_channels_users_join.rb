class CreateChannelsUsersJoin < ActiveRecord::Migration
  def up
  	create_table 'channels_users', :id => false do |t|
  		t.column 'channel_id', :integer
  		t.column 'user_id', :integer
  	end	
  end

  def down
  	drop_table 'users_channels'
  end
end
