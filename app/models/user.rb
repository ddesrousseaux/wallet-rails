class User < ActiveRecord::Base
  attr_accessible :firstname, :lastname
  has_many :wallets
end
