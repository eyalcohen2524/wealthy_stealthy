class ChangePriceToBeAFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :packages, :price, :float
  end
end
