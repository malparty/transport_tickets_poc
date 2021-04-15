require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit purchases_url
  #
  #   assert_selector "h1", text: "Purchases"
  # end

  test "index validation" do
    visit purchases_url
    assert_selector_not '.error' 
    assert_selector '#email'
    
  end
end
