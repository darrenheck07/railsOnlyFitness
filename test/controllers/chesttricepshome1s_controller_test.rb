require 'test_helper'

class Chesttricepshome1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttricepshome1 = chesttricepshome1s(:one)
  end

  test "should get index" do
    get chesttricepshome1s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttricepshome1_url
    assert_response :success
  end

  test "should create chesttricepshome1" do
    assert_difference('Chesttricepshome1.count') do
      post chesttricepshome1s_url, params: { chesttricepshome1: { exercise: @chesttricepshome1.exercise, reps: @chesttricepshome1.reps, sets: @chesttricepshome1.sets } }
    end

    assert_redirected_to chesttricepshome1_url(Chesttricepshome1.last)
  end

  test "should show chesttricepshome1" do
    get chesttricepshome1_url(@chesttricepshome1)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttricepshome1_url(@chesttricepshome1)
    assert_response :success
  end

  test "should update chesttricepshome1" do
    patch chesttricepshome1_url(@chesttricepshome1), params: { chesttricepshome1: { exercise: @chesttricepshome1.exercise, reps: @chesttricepshome1.reps, sets: @chesttricepshome1.sets } }
    assert_redirected_to chesttricepshome1_url(@chesttricepshome1)
  end

  test "should destroy chesttricepshome1" do
    assert_difference('Chesttricepshome1.count', -1) do
      delete chesttricepshome1_url(@chesttricepshome1)
    end

    assert_redirected_to chesttricepshome1s_url
  end
end
