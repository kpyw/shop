class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :number
      t.string :product_id

      t.timestamps
    end
  end
end
