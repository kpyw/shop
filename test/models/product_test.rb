require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "favorite" do
  #   favorite =7
  #   assert_equal 7, favorite
  # assert_equal "coffee maker", Product.first.name

  # end

  test "the truth" do
    assert_equal 2, Product.count

    coffee_maker = products(:appliance)
    assert_equal "Coffee Maker", coffee_maker.name

  end


end
