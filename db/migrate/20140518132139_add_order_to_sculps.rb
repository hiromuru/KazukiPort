class AddOrderToSculps < ActiveRecord::Migration
  def change
    add_column :sculps, :order, :string
  end
end
