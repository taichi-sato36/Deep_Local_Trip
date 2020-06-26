class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.boolean :is_valid, default: true, null: false
      t.integer :user_id, null: false
      t.integer :prefecture_id, null: false
      t.string :title, null: false
      t.string :address, null: false
      t.string :supplement, null: false
      t.string :post_image_id, null: false
      t.text :text, null: false
       

      t.timestamps
    end
  end
end
