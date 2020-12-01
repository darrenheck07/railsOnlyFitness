require 'test_helper'

class Legshome4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legshome4 = legshome4s(:one)
  end

  test "should get index" do
    get legshome4s_url
    assert_response :success
  end

  test "should get new" do
    get new_legshome4_url
    assert_response :success
  end

  test "should create legshome4" do
    assert_difference('Legshome4.count') do
      post legshome4s_url, params: { legshome4: { exercise: @legshome4.exercise, reps: @legshome4.reps, sets: @legshome4.sets } }
    end

    assert_redirected_to legshome4_url(Legshome4.last)
  end

  test "should show legshome4" do
    get legshome4_url(@legshome4)
    assert_response :success
  end

  test "should get edit" do
    get edit_legshome4_url(@legshome4)
    assert_response :success
  end

  test "should update legshome4" do
    patch legshome4_url(@legshome4), params: { legshome4: { exercise: @legshome4.exercise, reps: @legshome4.reps, sets: @legshome4.sets } }
    assert_redirected_to legshome4_url(@legshome4)
  end

  test "should destroy legshome4" do
    assert_difference('Legshome4.count', -1) do
      delete legshome4_url(@legshome4)
    end

    assert_redirected_to legshome4s_url
  end
end
