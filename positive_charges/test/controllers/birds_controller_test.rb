require 'test_helper'

class BirdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bird = birds(:one)
  end

  test "should get index" do
    get birds_url
    assert_response :success
  end

  test "should get new" do
    get new_bird_url
    assert_response :success
  end

  test "should create bird" do
    assert_difference('Bird.count') do
      post birds_url, params: { bird: { name: @bird.name, origin: @bird.origin, species: @bird.species } }
    end

    assert_redirected_to bird_url(Bird.last)
  end

  test "should show bird" do
    get bird_url(@bird)
    assert_response :success
  end

  test "should get edit" do
    get edit_bird_url(@bird)
    assert_response :success
  end

  test "should update bird" do
    patch bird_url(@bird), params: { bird: { name: @bird.name, origin: @bird.origin, species: @bird.species } }
    assert_redirected_to bird_url(@bird)
  end

  test "should destroy bird" do
    assert_difference('Bird.count', -1) do
      delete bird_url(@bird)
    end

    assert_redirected_to birds_url
  end
end
