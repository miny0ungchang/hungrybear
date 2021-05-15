class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.text :address
      t.string :mobile_number
      t.string :restaurant_owner

      t.timestamps
    end
  end
end
