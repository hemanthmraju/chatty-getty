class UserDetail < ActiveRecord::Base
  attr_accessible :dob, :first_name, :last_name, :mobile
  belongs_to :user
end
