class CreateOrderMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_menu_items do |t|
      t.integer :quantity
      t.references :order, null: false, foreign_key: true
      t.references :menu_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
