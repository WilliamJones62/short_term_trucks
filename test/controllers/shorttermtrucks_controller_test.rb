require 'test_helper'

class ShorttermtrucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shorttermtruck = shorttermtrucks(:one)
  end

  test "should get index" do
    get shorttermtrucks_url
    assert_response :success
  end

  test "should get new" do
    get new_shorttermtruck_url
    assert_response :success
  end

  test "should create shorttermtruck" do
    assert_difference('Shorttermtruck.count') do
      post shorttermtrucks_url, params: { shorttermtruck: { employee: @shorttermtruck.employee, ezpass: @shorttermtruck.ezpass, given: @shorttermtruck.given, returned: @shorttermtruck.returned, truck: @shorttermtruck.truck, user_id: @shorttermtruck.user_id, wexcard: @shorttermtruck.wexcard } }
    end

    assert_redirected_to shorttermtruck_url(Shorttermtruck.last)
  end

  test "should show shorttermtruck" do
    get shorttermtruck_url(@shorttermtruck)
    assert_response :success
  end

  test "should get edit" do
    get edit_shorttermtruck_url(@shorttermtruck)
    assert_response :success
  end

  test "should update shorttermtruck" do
    patch shorttermtruck_url(@shorttermtruck), params: { shorttermtruck: { employee: @shorttermtruck.employee, ezpass: @shorttermtruck.ezpass, given: @shorttermtruck.given, returned: @shorttermtruck.returned, truck: @shorttermtruck.truck, user_id: @shorttermtruck.user_id, wexcard: @shorttermtruck.wexcard } }
    assert_redirected_to shorttermtruck_url(@shorttermtruck)
  end

  test "should destroy shorttermtruck" do
    assert_difference('Shorttermtruck.count', -1) do
      delete shorttermtruck_url(@shorttermtruck)
    end

    assert_redirected_to shorttermtrucks_url
  end
end
