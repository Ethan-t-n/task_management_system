require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test "should not save task without a name" do
    task = Task.new
    assert_not task.save, "Saved the task without a name"
  end

  test "should return completed tasks" do
    completed_tasks = Task.completed
    assert_equal 0, completed_tasks.count
  end

  test "should return incomplete tasks" do
    incomplete_tasks = Task.incomplete
    assert_equal 2, incomplete_tasks.count
  end
end
