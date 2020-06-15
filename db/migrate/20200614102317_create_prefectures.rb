class CreatePrefectures < ActiveRecord::Migration[5.2]
  def change
    create_table :prefectures do |t|
    	t.integer :trip, default: 0, null:false, limit: 1
    	t.string :name, null:false, default: ""

      t.timestamps
    end
  end
end
