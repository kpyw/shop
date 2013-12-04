class RemoveProductIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :product_id
    remove_column :number
    add_column :ordered_on
  end
end
