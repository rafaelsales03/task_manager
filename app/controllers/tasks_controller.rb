require "test_helper"

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
    assert_difference("Task.count") do
      post tasks_url, params: {
        task: {
          title: "New Task",
          description: "Testing task creation",
          completed: false,
          due_date: Date.today
        }
      }
    end

    assert_redirected_to tasks_path
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
    patch task_url(@task), params: {
      task: {
        title: "Updated Task",
        description: "Updated description",
        completed: true,
        due_date: Date.tomorrow
      }
    }

    assert_redirected_to tasks_path
  end

  test "should destroy task" do
    assert_difference("Task.count", -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_path
  end
end
