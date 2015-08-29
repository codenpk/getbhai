require 'test_helper'

class EmergenciesControllerTest < ActionController::TestCase
  setup do
    @emergency = emergencies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergencies)
  end

  test "should create emergency" do
    assert_difference('Emergency.count') do
      post :create, emergency: { location_lat: @emergency.location_lat, location_lon: @emergency.location_lon, location_url: @emergency.location_url, status: @emergency.status }
    end

    assert_response 201
  end

  test "should show emergency" do
    get :show, id: @emergency
    assert_response :success
  end

  test "should update emergency" do
    put :update, id: @emergency, emergency: { location_lat: @emergency.location_lat, location_lon: @emergency.location_lon, location_url: @emergency.location_url, status: @emergency.status }
    assert_response 204
  end

  test "should destroy emergency" do
    assert_difference('Emergency.count', -1) do
      delete :destroy, id: @emergency
    end

    assert_response 204
  end
end
