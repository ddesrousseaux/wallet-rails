class Auction < ActiveRecord::Base
  validates_presence_of :name
  validates_numericality_of :exchange_rate
end
