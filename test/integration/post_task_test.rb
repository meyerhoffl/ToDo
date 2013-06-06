require 'test_helper'

class PostTaskTest < ActionDispatch::IntegrationTest
  test "view a list of tasks" do
    visit '/'
    click_link 'Add Task'
    fill_in 'Title', with: 'Buy presents'
    click_button 'Submit Task'
    visit '/tasks'
    assert_include page.body, "Buy presents"
  end
end