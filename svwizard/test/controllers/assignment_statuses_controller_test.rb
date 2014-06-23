require 'test_helper'

class AssignmentStatusesControllerTest < ActionController::TestCase
  setup do
    @assignment_status = assignment_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment_status" do
    assert_difference('AssignmentStatus.count') do
      post :create, assignment_status: { name: @assignment_status.name }
    end

    assert_redirected_to assignment_status_path(assigns(:assignment_status))
  end

  test "should show assignment_status" do
    get :show, id: @assignment_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment_status
    assert_response :success
  end

  test "should update assignment_status" do
    patch :update, id: @assignment_status, assignment_status: { name: @assignment_status.name }
    assert_redirected_to assignment_status_path(assigns(:assignment_status))
  end

  test "should destroy assignment_status" do
    assert_difference('AssignmentStatus.count', -1) do
      delete :destroy, id: @assignment_status
    end

    assert_redirected_to assignment_statuses_path
  end
end
