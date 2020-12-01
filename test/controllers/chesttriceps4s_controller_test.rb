require 'test_helper'

class Chesttriceps4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttriceps4 = chesttriceps4s(:one)
  end

  test "should get index" do
    get chesttriceps4s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttriceps4_url
    assert_response :success
  end

  test "should create chesttriceps4" do
    assert_difference('Chesttriceps4.count') do
      post chesttriceps4s_url, params: { chesttriceps4: { exercise: @chesttriceps4.exercise, reps: @chesttriceps4.reps, sets: @chesttriceps4.sets } }
    end

    assert_redirected_to chesttriceps4_url(Chesttriceps4.last)
  end

  test "should show chesttriceps4" do
    get chesttriceps4_url(@chesttriceps4)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttriceps4_url(@chesttriceps4)
    assert_response :success
  end

  test "should update chesttriceps4" do
    patch chesttriceps4_url(@chesttriceps4), params: { chesttriceps4: { exercise: @chesttriceps4.exercise, reps: @chesttriceps4.reps, sets: @chesttriceps4.sets } }
    assert_redirected_to chesttriceps4_url(@chesttriceps4)
  end

  test "should destroy chesttriceps4" do
    assert_difference('Chesttriceps4.count', -1) do
      delete chesttriceps4_url(@chesttriceps4)
    end

    assert_redirected_to chesttriceps4s_url
  end
end
