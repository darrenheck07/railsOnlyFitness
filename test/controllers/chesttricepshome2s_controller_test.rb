require 'test_helper'

class Chesttricepshome2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttricepshome2 = chesttricepshome2s(:one)
  end

  test "should get index" do
    get chesttricepshome2s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttricepshome2_url
    assert_response :success
  end

  test "should create chesttricepshome2" do
    assert_difference('Chesttricepshome2.count') do
      post chesttricepshome2s_url, params: { chesttricepshome2: { exercise: @chesttricepshome2.exercise, reps: @chesttricepshome2.reps, sets: @chesttricepshome2.sets } }
    end

    assert_redirected_to chesttricepshome2_url(Chesttricepshome2.last)
  end

  test "should show chesttricepshome2" do
    get chesttricepshome2_url(@chesttricepshome2)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttricepshome2_url(@chesttricepshome2)
    assert_response :success
  end

  test "should update chesttricepshome2" do
    patch chesttricepshome2_url(@chesttricepshome2), params: { chesttricepshome2: { exercise: @chesttricepshome2.exercise, reps: @chesttricepshome2.reps, sets: @chesttricepshome2.sets } }
    assert_redirected_to chesttricepshome2_url(@chesttricepshome2)
  end

  test "should destroy chesttricepshome2" do
    assert_difference('Chesttricepshome2.count', -1) do
      delete chesttricepshome2_url(@chesttricepshome2)
    end

    assert_redirected_to chesttricepshome2s_url
  end
end
