class ItemsController < ApplicationController

def tally
  @subtotal
  @item.each do |item|

      @cost = product.price

      @subtotal += @cost
end



end
