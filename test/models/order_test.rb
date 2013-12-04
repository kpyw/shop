require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "add a product" do
    o=Order.new
    o.ordered_on = Date.today
    o.save

    o.add_product(Product.first)

    assert_equal 1, o.products.count

  end

  test "shipping costs 7" do
    o=Order.new
    o.ordered_on = Date.today
    o.save

    o.add_product(Product.first)

    assert_equal 700, o.shipping
  end

  test "shipping costs 0 if 3 or more items" do
    o=Order.new
    o.ordered_on = Date.today
    o.save

    o.add_product(Product.first)
    o.add_product(Product.first)
    o.add_product(Product.first)
    o.reload
    assert_equal 0, o.shipping
  end

end
