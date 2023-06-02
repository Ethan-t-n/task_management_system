require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { name: "New Task", description: "Sample description", completed: false } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { name: "Updated Task" } }
    assert_redirected_to task_url(@task)
    @task.reload
    assert_equal "Updated Task", @task.name
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end
  end

  test "should clear all tasks" do
    Task.create(name: "Task 1", description: "Sample description", completed: false)
    Task.create(name: "Task 2", description: "Sample description", completed: true)

    assert_difference('Task.count', -Task.count) do
      delete clear_all_tasks_url
    end

    assert_redirected_to tasks_url
  end

  test "should get index and sort completed tasks to the bottom" do
    completed_task = Task.create(name: "Completed Task", completed: true)
  incomplete_task = Task.create(name: "Incomplete Task", completed: false)

  get tasks_url

  assert_response :success

  task_rows = response.body.scan(/<tr>(.*?)<\/tr>/m).flatten
  task_names = task_rows.map { |row| row.scan(/<td>(.*?)<\/td>/).flatten[0] }
  task_completed = task_rows.map { |row| row.scan(/<td>(.*?)<\/td>/).flatten[2] } # Adjusted index for completion status

  assert_equal ["Incomplete Task", "Completed Task"], task_names.last(2)
  assert_equal ["No", "Yes"], task_completed.last(2)
  end
end
