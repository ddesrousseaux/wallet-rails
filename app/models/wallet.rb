class Wallet < ActiveRecord::Base
  has_many :auctions
  belongs_to :user
end
