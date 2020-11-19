class AddSquatPrToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :squatPR, :int
  end
end
