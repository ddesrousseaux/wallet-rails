class CreateInvestments < ActiveRecord::Migration
  def self.up
    create_table :investments do |t|
      t.integer :quantity
      t.integer :wallet_id
      t.integer :auction_id

      t.timestamps
    end
  end

  def self.down
    drop_table :investments
  end
end
