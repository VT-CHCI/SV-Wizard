require 'test_helper'

class ConferencesControllerTest < ActionController::TestCase
  setup do
    @conference = conferences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:conferences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create conference" do
    assert_difference('Conference.count') do
      post :create, conference: { bid_day: @conference.bid_day, email: @conference.email, end_date: @conference.end_date, maintenance: @conference.maintenance, name: @conference.name, short_name: @conference.short_name, start_date: @conference.start_date, status: @conference.status, volunteer_hours: @conference.volunteer_hours, volunteers: @conference.volunteers, year: @conference.year }
    end

    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should show conference" do
    get :show, id: @conference
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @conference
    assert_response :success
  end

  test "should update conference" do
    patch :update, id: @conference, conference: { bid_day: @conference.bid_day, email: @conference.email, end_date: @conference.end_date, maintenance: @conference.maintenance, name: @conference.name, short_name: @conference.short_name, start_date: @conference.start_date, status: @conference.status, volunteer_hours: @conference.volunteer_hours, volunteers: @conference.volunteers, year: @conference.year }
    assert_redirected_to conference_path(assigns(:conference))
  end

  test "should destroy conference" do
    assert_difference('Conference.count', -1) do
      delete :destroy, id: @conference
    end

    assert_redirected_to conferences_path
  end
end
