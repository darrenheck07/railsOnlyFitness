require 'test_helper'

class Shouldersbicepshome4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbicepshome4 = shouldersbicepshome4s(:one)
  end

  test "should get index" do
    get shouldersbicepshome4s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbicepshome4_url
    assert_response :success
  end

  test "should create shouldersbicepshome4" do
    assert_difference('Shouldersbicepshome4.count') do
      post shouldersbicepshome4s_url, params: { shouldersbicepshome4: { exercise: @shouldersbicepshome4.exercise, reps: @shouldersbicepshome4.reps, sets: @shouldersbicepshome4.sets } }
    end

    assert_redirected_to shouldersbicepshome4_url(Shouldersbicepshome4.last)
  end

  test "should show shouldersbicepshome4" do
    get shouldersbicepshome4_url(@shouldersbicepshome4)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbicepshome4_url(@shouldersbicepshome4)
    assert_response :success
  end

  test "should update shouldersbicepshome4" do
    patch shouldersbicepshome4_url(@shouldersbicepshome4), params: { shouldersbicepshome4: { exercise: @shouldersbicepshome4.exercise, reps: @shouldersbicepshome4.reps, sets: @shouldersbicepshome4.sets } }
    assert_redirected_to shouldersbicepshome4_url(@shouldersbicepshome4)
  end

  test "should destroy shouldersbicepshome4" do
    assert_difference('Shouldersbicepshome4.count', -1) do
      delete shouldersbicepshome4_url(@shouldersbicepshome4)
    end

    assert_redirected_to shouldersbicepshome4s_url
  end
end
