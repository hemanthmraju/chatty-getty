class UserDetail < ActiveRecord::Base
  attr_accessible :dob, :first_name, :last_name, :mobile,:user_id,:avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "50x50>" },:default_url => lambda { |image| ActionController::Base.helpers.asset_path('guest.jpg') }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
end
