class CreateSculps < ActiveRecord::Migration
  def change
    create_table :sculps do |t|
      t.string :title
      t.integer :pic_id
      t.integer :wide
      t.integer :depth
      t.integer :high
      t.date :madein

      t.timestamps
    end
  end
end
