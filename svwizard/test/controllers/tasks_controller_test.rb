require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { conference_id: @task.conference_id, day: @task.day, description: @task.description, end_time: @task.end_time, hours: @task.hours, invisible: @task.invisible, location_id: @task.location_id, name: @task.name, priority: @task.priority, slots: @task.slots, start_time: @task.start_time }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task, task: { conference_id: @task.conference_id, day: @task.day, description: @task.description, end_time: @task.end_time, hours: @task.hours, invisible: @task.invisible, location_id: @task.location_id, name: @task.name, priority: @task.priority, slots: @task.slots, start_time: @task.start_time }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
