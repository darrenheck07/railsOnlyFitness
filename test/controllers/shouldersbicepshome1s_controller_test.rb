require 'test_helper'

class Shouldersbicepshome1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbicepshome1 = shouldersbicepshome1s(:one)
  end

  test "should get index" do
    get shouldersbicepshome1s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbicepshome1_url
    assert_response :success
  end

  test "should create shouldersbicepshome1" do
    assert_difference('Shouldersbicepshome1.count') do
      post shouldersbicepshome1s_url, params: { shouldersbicepshome1: { exercise: @shouldersbicepshome1.exercise, reps: @shouldersbicepshome1.reps, sets: @shouldersbicepshome1.sets } }
    end

    assert_redirected_to shouldersbicepshome1_url(Shouldersbicepshome1.last)
  end

  test "should show shouldersbicepshome1" do
    get shouldersbicepshome1_url(@shouldersbicepshome1)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbicepshome1_url(@shouldersbicepshome1)
    assert_response :success
  end

  test "should update shouldersbicepshome1" do
    patch shouldersbicepshome1_url(@shouldersbicepshome1), params: { shouldersbicepshome1: { exercise: @shouldersbicepshome1.exercise, reps: @shouldersbicepshome1.reps, sets: @shouldersbicepshome1.sets } }
    assert_redirected_to shouldersbicepshome1_url(@shouldersbicepshome1)
  end

  test "should destroy shouldersbicepshome1" do
    assert_difference('Shouldersbicepshome1.count', -1) do
      delete shouldersbicepshome1_url(@shouldersbicepshome1)
    end

    assert_redirected_to shouldersbicepshome1s_url
  end
end
