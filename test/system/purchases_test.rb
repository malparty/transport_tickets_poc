require "application_system_test_case"

class PurchasesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit purchases_url
  #
  #   assert_selector "h1", text: "Purchases"
  # end

  test "index validation" do
    visit purchases_url
    assert_selector '.errors', count:0 
    assert_selector '#email'
  end
  
  test "email validation error" do
    visit '/error'
    assert_selector '.errors'
    assert_selector '#email', count:0
  end
end
