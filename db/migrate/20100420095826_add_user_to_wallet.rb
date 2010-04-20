class AddUserToWallet < ActiveRecord::Migration
  def self.up
    add_column :wallets, :user_id, :integer
  end

  def self.down
    remove_column :wallets, :user_id
  end
end
