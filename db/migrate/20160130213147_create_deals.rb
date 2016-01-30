class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :name
      t.string :location_country
      t.string :location_city
      t.string :picture_path
      t.integer :likes
      t.integer :dislikes

      t.timestamps null: false
    end
  end
end
