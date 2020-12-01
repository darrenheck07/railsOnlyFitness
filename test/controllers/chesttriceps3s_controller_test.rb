require 'test_helper'

class Chesttriceps3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttriceps3 = chesttriceps3s(:one)
  end

  test "should get index" do
    get chesttriceps3s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttriceps3_url
    assert_response :success
  end

  test "should create chesttriceps3" do
    assert_difference('Chesttriceps3.count') do
      post chesttriceps3s_url, params: { chesttriceps3: { exercise: @chesttriceps3.exercise, reps: @chesttriceps3.reps, sets: @chesttriceps3.sets } }
    end

    assert_redirected_to chesttriceps3_url(Chesttriceps3.last)
  end

  test "should show chesttriceps3" do
    get chesttriceps3_url(@chesttriceps3)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttriceps3_url(@chesttriceps3)
    assert_response :success
  end

  test "should update chesttriceps3" do
    patch chesttriceps3_url(@chesttriceps3), params: { chesttriceps3: { exercise: @chesttriceps3.exercise, reps: @chesttriceps3.reps, sets: @chesttriceps3.sets } }
    assert_redirected_to chesttriceps3_url(@chesttriceps3)
  end

  test "should destroy chesttriceps3" do
    assert_difference('Chesttriceps3.count', -1) do
      delete chesttriceps3_url(@chesttriceps3)
    end

    assert_redirected_to chesttriceps3s_url
  end
end
