class CreateExhibs < ActiveRecord::Migration
  def change
    create_table :exhibs do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :gallery
      t.string :gallery_url
      t.string :adress
      t.text :desc

      t.timestamps
    end
  end
end
