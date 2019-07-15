class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, default:"Sin nombre" 
      t.text :description, default:"Sin descripción "
      t.date :start_date
      t.date :end_date
      t.time :start_time 
      t.time :end_time
      t.decimal :price, default: 0
      t.integer :event_phone
      t.string :website
      t.string :image_url
      t.integer :user_id
      t.integer :category_id
      t.integer :subcategory_id
      t.integer :venue_id
      t.timestamps
    end
  end
end
