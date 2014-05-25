class AddCategoryToSculps < ActiveRecord::Migration
  def change
    add_column :sculps, :category, :string
  end
end
