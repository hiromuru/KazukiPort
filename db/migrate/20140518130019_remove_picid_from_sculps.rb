class RemovePicidFromSculps < ActiveRecord::Migration
  def change
    remove_column :sculps, :pic_id, :integer
  end
end
