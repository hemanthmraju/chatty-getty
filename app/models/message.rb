class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :channel
  attr_accessible :text_message, :channel_id, :user_id
end
