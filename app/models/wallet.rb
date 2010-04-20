class Wallet < ActiveRecord::Base
  has_many :investments
  belongs_to :user
end
