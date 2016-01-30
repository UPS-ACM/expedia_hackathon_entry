class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location_country
      t.string :location_city
      t.integer :min_price_q1
      t.integer :min_price_q2
      t.integer :min_price_q3
      t.integer :min_price_q4
      t.references :deal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
