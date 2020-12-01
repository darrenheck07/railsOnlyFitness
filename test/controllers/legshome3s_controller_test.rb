require 'test_helper'

class Legshome3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legshome3 = legshome3s(:one)
  end

  test "should get index" do
    get legshome3s_url
    assert_response :success
  end

  test "should get new" do
    get new_legshome3_url
    assert_response :success
  end

  test "should create legshome3" do
    assert_difference('Legshome3.count') do
      post legshome3s_url, params: { legshome3: { exercise: @legshome3.exercise, reps: @legshome3.reps, sets: @legshome3.sets } }
    end

    assert_redirected_to legshome3_url(Legshome3.last)
  end

  test "should show legshome3" do
    get legshome3_url(@legshome3)
    assert_response :success
  end

  test "should get edit" do
    get edit_legshome3_url(@legshome3)
    assert_response :success
  end

  test "should update legshome3" do
    patch legshome3_url(@legshome3), params: { legshome3: { exercise: @legshome3.exercise, reps: @legshome3.reps, sets: @legshome3.sets } }
    assert_redirected_to legshome3_url(@legshome3)
  end

  test "should destroy legshome3" do
    assert_difference('Legshome3.count', -1) do
      delete legshome3_url(@legshome3)
    end

    assert_redirected_to legshome3s_url
  end
end
