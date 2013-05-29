require 'test_helper'

class WeatherForcastsControllerTest < ActionController::TestCase
  setup do
    @weather_forcast = weather_forcasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weather_forcasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weather_forcast" do
    assert_difference('WeatherForcast.count') do
      post :create, weather_forcast: { city: @weather_forcast.city, date: @weather_forcast.date, index: @weather_forcast.index, temperature: @weather_forcast.temperature, weather: @weather_forcast.weather, week: @weather_forcast.week, wind: @weather_forcast.wind, wind_level: @weather_forcast.wind_level }
    end

    assert_redirected_to weather_forcast_path(assigns(:weather_forcast))
  end

  test "should show weather_forcast" do
    get :show, id: @weather_forcast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weather_forcast
    assert_response :success
  end

  test "should update weather_forcast" do
    put :update, id: @weather_forcast, weather_forcast: { city: @weather_forcast.city, date: @weather_forcast.date, index: @weather_forcast.index, temperature: @weather_forcast.temperature, weather: @weather_forcast.weather, week: @weather_forcast.week, wind: @weather_forcast.wind, wind_level: @weather_forcast.wind_level }
    assert_redirected_to weather_forcast_path(assigns(:weather_forcast))
  end

  test "should destroy weather_forcast" do
    assert_difference('WeatherForcast.count', -1) do
      delete :destroy, id: @weather_forcast
    end

    assert_redirected_to weather_forcasts_path
  end
end
