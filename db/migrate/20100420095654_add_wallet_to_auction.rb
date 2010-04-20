class AddWalletToAuction < ActiveRecord::Migration
  def self.up
    add_column :auctions, :wallet_id, :integer
  end

  def self.down
    remove_column :auctions, :wallet_id
  end
end
