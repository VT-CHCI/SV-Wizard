require 'test_helper'

class ConferenceStatusesControllerTest < ActionController::TestCase
  setup do
    @conference_status = conference_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conference_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference_status" do
    assert_difference('ConferenceStatus.count') do
      post :create, conference_status: { name: @conference_status.name }
    end

    assert_redirected_to conference_status_path(assigns(:conference_status))
  end

  test "should show conference_status" do
    get :show, id: @conference_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conference_status
    assert_response :success
  end

  test "should update conference_status" do
    patch :update, id: @conference_status, conference_status: { name: @conference_status.name }
    assert_redirected_to conference_status_path(assigns(:conference_status))
  end

  test "should destroy conference_status" do
    assert_difference('ConferenceStatus.count', -1) do
      delete :destroy, id: @conference_status
    end

    assert_redirected_to conference_statuses_path
  end
end
