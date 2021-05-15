class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :total_order
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
