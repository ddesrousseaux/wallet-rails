class Wallet < ActiveRecord::Base
  has_many :investments
  belongs_to :user
  
  validates_presence_of :name, :on => :save, :message => "can't be blank"
end
