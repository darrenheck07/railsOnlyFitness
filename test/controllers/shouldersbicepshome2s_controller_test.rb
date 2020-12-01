require 'test_helper'

class Shouldersbicepshome2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbicepshome2 = shouldersbicepshome2s(:one)
  end

  test "should get index" do
    get shouldersbicepshome2s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbicepshome2_url
    assert_response :success
  end

  test "should create shouldersbicepshome2" do
    assert_difference('Shouldersbicepshome2.count') do
      post shouldersbicepshome2s_url, params: { shouldersbicepshome2: { exercise: @shouldersbicepshome2.exercise, reps: @shouldersbicepshome2.reps, sets: @shouldersbicepshome2.sets } }
    end

    assert_redirected_to shouldersbicepshome2_url(Shouldersbicepshome2.last)
  end

  test "should show shouldersbicepshome2" do
    get shouldersbicepshome2_url(@shouldersbicepshome2)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbicepshome2_url(@shouldersbicepshome2)
    assert_response :success
  end

  test "should update shouldersbicepshome2" do
    patch shouldersbicepshome2_url(@shouldersbicepshome2), params: { shouldersbicepshome2: { exercise: @shouldersbicepshome2.exercise, reps: @shouldersbicepshome2.reps, sets: @shouldersbicepshome2.sets } }
    assert_redirected_to shouldersbicepshome2_url(@shouldersbicepshome2)
  end

  test "should destroy shouldersbicepshome2" do
    assert_difference('Shouldersbicepshome2.count', -1) do
      delete shouldersbicepshome2_url(@shouldersbicepshome2)
    end

    assert_redirected_to shouldersbicepshome2s_url
  end
end
