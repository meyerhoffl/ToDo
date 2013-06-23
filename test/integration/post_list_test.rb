require 'test_helper'

class PostListTest < ActionDispatch::IntegrationTest
  test "view a list of lists" do
    visit '/'
    click_link 'Add List'
    fill_in 'Title', with: 'Grocery List'
    click_button 'Add List'
    visit '/lists'
    assert_include page.body, "Grocery List"
  end
end