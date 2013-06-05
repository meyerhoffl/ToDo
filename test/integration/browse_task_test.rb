require 'test_helper'

class BrowseTaskTest < ActionDispatch::IntegrationTest
  test "view a list of tasks" do
    Task.create!(title: "Walk Peggy")
    assert_equal 1, Task.count
    visit '/tasks'
    assert_include page.body, "Walk Peggy"
  end
end