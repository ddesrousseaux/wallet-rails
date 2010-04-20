class User < ActiveRecord::Base
  has_many :wallets
  
  validates_presence_of :email, :on => :save, :message => "can't be blank"
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
