class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
        #  :recoverable, :rememberable, :validatable
  extend Devise::Models
  include DeviseTokenAuth::Concerns::User
end
