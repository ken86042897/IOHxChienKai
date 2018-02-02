class CreateTable < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_items do |t|
    	t.integer :user_id
        t.integer :cart_id
        t.integer :product_id
        t.integer :product_num
    	t.integer :product_price
      t.timestamps
    end
  end
end