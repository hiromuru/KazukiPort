class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :user_id
      t.string :name
      t.text :history
      t.text :onl_exb_his
      t.text :exb_his

      t.timestamps
    end
  end
end
