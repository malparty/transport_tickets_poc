require "test_helper"

class PurchaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "new purchase cannot be paid" do
    purchase = Purchase.new
    assert_not purchase.isPaid, "Initiated purchase marked with isPaid true or nil" 
  end
  
end
