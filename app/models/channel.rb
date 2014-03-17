class Channel < ActiveRecord::Base
  
  has_many :messages
  has_and_belongs_to_many :users

  attr_accessible :description, :name
end
