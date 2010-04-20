class Investment < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :auction
end
