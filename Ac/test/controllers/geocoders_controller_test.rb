require 'test_helper'

class GeocodersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geocoder = geocoders(:one)
  end

  test "should get index" do
    get geocoders_url
    assert_response :success
  end

  test "should get new" do
    get new_geocoder_url
    assert_response :success
  end

  test "should create geocoder" do
    assert_difference('Geocoder.count') do
      post geocoders_url, params: { geocoder: { address: @geocoder.address, latitude: @geocoder.latitude, longitude: @geocoder.longitude } }
    end

    assert_redirected_to geocoder_url(Geocoder.last)
  end

  test "should show geocoder" do
    get geocoder_url(@geocoder)
    assert_response :success
  end

  test "should get edit" do
    get edit_geocoder_url(@geocoder)
    assert_response :success
  end

  test "should update geocoder" do
    patch geocoder_url(@geocoder), params: { geocoder: { address: @geocoder.address, latitude: @geocoder.latitude, longitude: @geocoder.longitude } }
    assert_redirected_to geocoder_url(@geocoder)
  end

  test "should destroy geocoder" do
    assert_difference('Geocoder.count', -1) do
      delete geocoder_url(@geocoder)
    end

    assert_redirected_to geocoders_url
  end
end
