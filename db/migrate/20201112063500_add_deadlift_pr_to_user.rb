class AddDeadliftPrToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :deadliftPR, :int
  end
end
