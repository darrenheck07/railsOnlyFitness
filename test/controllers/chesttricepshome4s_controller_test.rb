require 'test_helper'

class Chesttricepshome4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttricepshome4 = chesttricepshome4s(:one)
  end

  test "should get index" do
    get chesttricepshome4s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttricepshome4_url
    assert_response :success
  end

  test "should create chesttricepshome4" do
    assert_difference('Chesttricepshome4.count') do
      post chesttricepshome4s_url, params: { chesttricepshome4: { exercise: @chesttricepshome4.exercise, reps: @chesttricepshome4.reps, sets: @chesttricepshome4.sets } }
    end

    assert_redirected_to chesttricepshome4_url(Chesttricepshome4.last)
  end

  test "should show chesttricepshome4" do
    get chesttricepshome4_url(@chesttricepshome4)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttricepshome4_url(@chesttricepshome4)
    assert_response :success
  end

  test "should update chesttricepshome4" do
    patch chesttricepshome4_url(@chesttricepshome4), params: { chesttricepshome4: { exercise: @chesttricepshome4.exercise, reps: @chesttricepshome4.reps, sets: @chesttricepshome4.sets } }
    assert_redirected_to chesttricepshome4_url(@chesttricepshome4)
  end

  test "should destroy chesttricepshome4" do
    assert_difference('Chesttricepshome4.count', -1) do
      delete chesttricepshome4_url(@chesttricepshome4)
    end

    assert_redirected_to chesttricepshome4s_url
  end
end
