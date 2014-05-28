class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  attr_accessible :email, :password, :password_confirmation, :remember_me
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable
  # attr_accessible :title, :body
  has_many :message
  has_many :authentications
  has_and_belongs_to_many :channels
  has_one :user_detail
  
  
    def self.from_omniauth(auth, current_user)
    authorization = Authentication.where(:provider => auth.provider, :uid => auth.uid.to_s).first_or_initialize
    if authorization.user.blank?
      user = current_user.nil? ? User.where('email = ?', auth["info"]["email"]).first : current_user
      if user.blank?
        user = User.new
        user.password = Devise.friendly_token[0,10]
        user.username = auth.info.nickname
        user.email = auth.info.email
        auth.provider == "twitter" ?  user.save(:validate => false) :  user.save
      end
      authorization.user_id = user.id
      authorization.save
    end
    authorization.user
  end

end
