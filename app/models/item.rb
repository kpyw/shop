class Item < ActiveRecord::Base

  belongs_to :order
  belongs_to :product

  after_create :update_order
  after_destroy :update_order


  def update_order
    if self.order.items.count >= 3
        self.order.shipping = 0
        self.order.save
    else
      self.order.shipping = 700
      self.order.save
    end
  end

end
