require 'test_helper'

class ChierpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chierp = chierps(:one)
  end

  test "should get index" do
    get chierps_url
    assert_response :success
  end

  test "should get new" do
    get new_chierp_url
    assert_response :success
  end

  test "should create chierp" do
    assert_difference('Chierp.count') do
      post chierps_url, params: { chierp: {  } }
    end

    assert_redirected_to chierp_url(Chierp.last)
  end

  test "should show chierp" do
    get chierp_url(@chierp)
    assert_response :success
  end

  test "should get edit" do
    get edit_chierp_url(@chierp)
    assert_response :success
  end

  test "should update chierp" do
    patch chierp_url(@chierp), params: { chierp: {  } }
    assert_redirected_to chierp_url(@chierp)
  end

  test "should destroy chierp" do
    assert_difference('Chierp.count', -1) do
      delete chierp_url(@chierp)
    end

    assert_redirected_to chierps_url
  end
end
