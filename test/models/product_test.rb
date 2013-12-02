require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  # test "favorite" do
  #   favorite =7
  #   assert_equal 7, favorite
  # end

  test "the truth" do
    assert_equal 8, Product.count
  end

end
