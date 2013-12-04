class Order < ActiveRecord::Base

#has_many :items, :class_name => "Item", :foreign_key => :order_id
  has_many :items
  has_many :products, through: :items

  def add_product(product)

     item = Item.new
     item.order_id = self.id
     item.product_id  = product.id
  end

  # def products
  #   Products.where(order_id: self.id)
  # end
  ####above is same as has_many :products

  def shipping
    if items.count >= 3
      0
    else
      700
  end
  ## doing it as a method doesn't allow you to query all orders iwth free ship easily

end
