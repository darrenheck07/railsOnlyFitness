require 'test_helper'

class Legshome2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legshome2 = legshome2s(:one)
  end

  test "should get index" do
    get legshome2s_url
    assert_response :success
  end

  test "should get new" do
    get new_legshome2_url
    assert_response :success
  end

  test "should create legshome2" do
    assert_difference('Legshome2.count') do
      post legshome2s_url, params: { legshome2: { exercise: @legshome2.exercise, reps: @legshome2.reps, sets: @legshome2.sets } }
    end

    assert_redirected_to legshome2_url(Legshome2.last)
  end

  test "should show legshome2" do
    get legshome2_url(@legshome2)
    assert_response :success
  end

  test "should get edit" do
    get edit_legshome2_url(@legshome2)
    assert_response :success
  end

  test "should update legshome2" do
    patch legshome2_url(@legshome2), params: { legshome2: { exercise: @legshome2.exercise, reps: @legshome2.reps, sets: @legshome2.sets } }
    assert_redirected_to legshome2_url(@legshome2)
  end

  test "should destroy legshome2" do
    assert_difference('Legshome2.count', -1) do
      delete legshome2_url(@legshome2)
    end

    assert_redirected_to legshome2s_url
  end
end
