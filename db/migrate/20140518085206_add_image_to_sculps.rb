class AddImageToSculps < ActiveRecord::Migration
  def change
    add_column :sculps, :image, :string
  end
end
