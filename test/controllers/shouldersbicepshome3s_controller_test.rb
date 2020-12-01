require 'test_helper'

class Shouldersbicepshome3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbicepshome3 = shouldersbicepshome3s(:one)
  end

  test "should get index" do
    get shouldersbicepshome3s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbicepshome3_url
    assert_response :success
  end

  test "should create shouldersbicepshome3" do
    assert_difference('Shouldersbicepshome3.count') do
      post shouldersbicepshome3s_url, params: { shouldersbicepshome3: { exercise: @shouldersbicepshome3.exercise, reps: @shouldersbicepshome3.reps, sets: @shouldersbicepshome3.sets } }
    end

    assert_redirected_to shouldersbicepshome3_url(Shouldersbicepshome3.last)
  end

  test "should show shouldersbicepshome3" do
    get shouldersbicepshome3_url(@shouldersbicepshome3)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbicepshome3_url(@shouldersbicepshome3)
    assert_response :success
  end

  test "should update shouldersbicepshome3" do
    patch shouldersbicepshome3_url(@shouldersbicepshome3), params: { shouldersbicepshome3: { exercise: @shouldersbicepshome3.exercise, reps: @shouldersbicepshome3.reps, sets: @shouldersbicepshome3.sets } }
    assert_redirected_to shouldersbicepshome3_url(@shouldersbicepshome3)
  end

  test "should destroy shouldersbicepshome3" do
    assert_difference('Shouldersbicepshome3.count', -1) do
      delete shouldersbicepshome3_url(@shouldersbicepshome3)
    end

    assert_redirected_to shouldersbicepshome3s_url
  end
end
