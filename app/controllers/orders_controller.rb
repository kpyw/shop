class OrdersController < ApplicationController
  def create
    @order = Order.new
    @order.id = params[:id]
  end

  def count

  end

  def total

  end

  # def shipping
  #   if order.total>2500 then @shipping=0
  #   elsif order.count>3 then @shipping=0
  #   else @shipping=700
  #   end
  end


end
