require 'test_helper'

class Chesttricepshome3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttricepshome3 = chesttricepshome3s(:one)
  end

  test "should get index" do
    get chesttricepshome3s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttricepshome3_url
    assert_response :success
  end

  test "should create chesttricepshome3" do
    assert_difference('Chesttricepshome3.count') do
      post chesttricepshome3s_url, params: { chesttricepshome3: { exercise: @chesttricepshome3.exercise, reps: @chesttricepshome3.reps, sets: @chesttricepshome3.sets } }
    end

    assert_redirected_to chesttricepshome3_url(Chesttricepshome3.last)
  end

  test "should show chesttricepshome3" do
    get chesttricepshome3_url(@chesttricepshome3)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttricepshome3_url(@chesttricepshome3)
    assert_response :success
  end

  test "should update chesttricepshome3" do
    patch chesttricepshome3_url(@chesttricepshome3), params: { chesttricepshome3: { exercise: @chesttricepshome3.exercise, reps: @chesttricepshome3.reps, sets: @chesttricepshome3.sets } }
    assert_redirected_to chesttricepshome3_url(@chesttricepshome3)
  end

  test "should destroy chesttricepshome3" do
    assert_difference('Chesttricepshome3.count', -1) do
      delete chesttricepshome3_url(@chesttricepshome3)
    end

    assert_redirected_to chesttricepshome3s_url
  end
end
