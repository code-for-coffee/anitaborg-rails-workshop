require 'test_helper'

class CheerupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cheerup = cheerups(:one)
  end

  test "should get index" do
    get cheerups_url
    assert_response :success
  end

  test "should get new" do
    get new_cheerup_url
    assert_response :success
  end

  test "should create cheerup" do
    assert_difference('Cheerup.count') do
      post cheerups_url, params: { cheerup: { content: @cheerup.content, name: @cheerup.name } }
    end

    assert_redirected_to cheerup_url(Cheerup.last)
  end

  test "should show cheerup" do
    get cheerup_url(@cheerup)
    assert_response :success
  end

  test "should get edit" do
    get edit_cheerup_url(@cheerup)
    assert_response :success
  end

  test "should update cheerup" do
    patch cheerup_url(@cheerup), params: { cheerup: { content: @cheerup.content, name: @cheerup.name } }
    assert_redirected_to cheerup_url(@cheerup)
  end

  test "should destroy cheerup" do
    assert_difference('Cheerup.count', -1) do
      delete cheerup_url(@cheerup)
    end

    assert_redirected_to cheerups_url
  end
end
