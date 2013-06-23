require 'test_helper'

class BrowseListTest < ActionDispatch::IntegrationTest
  test "view a list of lists" do
    List.create!(title: "Grocery List")
    assert_equal 1, List.count
    visit '/lists'
    assert_include page.body, "Grocery List"
  end
end