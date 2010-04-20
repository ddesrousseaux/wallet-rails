class User < ActiveRecord::Base
  has_many :wallets

  # Include default devise modules. Others available are:
  # :http_authenticatable, :token_authenticatable, :lockable, :timeoutable and :activatable, :confirmable
  devise :registerable, :authenticatable, :recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :firstname, :lastname
end
