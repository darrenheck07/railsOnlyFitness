require 'test_helper'

class Legshome1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legshome1 = legshome1s(:one)
  end

  test "should get index" do
    get legshome1s_url
    assert_response :success
  end

  test "should get new" do
    get new_legshome1_url
    assert_response :success
  end

  test "should create legshome1" do
    assert_difference('Legshome1.count') do
      post legshome1s_url, params: { legshome1: { exercise: @legshome1.exercise, reps: @legshome1.reps, sets: @legshome1.sets } }
    end

    assert_redirected_to legshome1_url(Legshome1.last)
  end

  test "should show legshome1" do
    get legshome1_url(@legshome1)
    assert_response :success
  end

  test "should get edit" do
    get edit_legshome1_url(@legshome1)
    assert_response :success
  end

  test "should update legshome1" do
    patch legshome1_url(@legshome1), params: { legshome1: { exercise: @legshome1.exercise, reps: @legshome1.reps, sets: @legshome1.sets } }
    assert_redirected_to legshome1_url(@legshome1)
  end

  test "should destroy legshome1" do
    assert_difference('Legshome1.count', -1) do
      delete legshome1_url(@legshome1)
    end

    assert_redirected_to legshome1s_url
  end
end
