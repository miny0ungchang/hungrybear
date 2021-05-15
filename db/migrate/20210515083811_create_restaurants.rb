class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :category
      t.integer :rating
      t.integer :min_time
      t.integer :max_time
      t.text :img_url
      t.float :lat
      t.float :lng
      t.references :user, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
