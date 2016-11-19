require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get people_new_url
    assert_response :success
  end

  test "should get create" do
    get people_create_url
    assert_response :success
  end

end
