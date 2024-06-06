class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :gacha_date, null: false
      t.string :gacha_place, null: false
      t.string :body, null: false     
      t.timestamps
    end
  end
end
