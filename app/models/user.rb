class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:facebook]
  has_many :projects

    def self.from_omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	    user.email = auth.info.email
	    user.password = Devise.friendly_token[0,20]
	    user.full_name = auth.info.name 
	    user.first_name = auth.info.first_name
	    user.last_name = auth.info.last_name 
	    user.location = auth.info.location
	    user.avatar = auth.info.image
	  end
	end

end
