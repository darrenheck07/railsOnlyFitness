require 'test_helper'

class Shouldersbiceps1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbiceps1 = shouldersbiceps1s(:one)
  end

  test "should get index" do
    get shouldersbiceps1s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbiceps1_url
    assert_response :success
  end

  test "should create shouldersbiceps1" do
    assert_difference('Shouldersbiceps1.count') do
      post shouldersbiceps1s_url, params: { shouldersbiceps1: { exercise: @shouldersbiceps1.exercise, reps: @shouldersbiceps1.reps, sets: @shouldersbiceps1.sets } }
    end

    assert_redirected_to shouldersbiceps1_url(Shouldersbiceps1.last)
  end

  test "should show shouldersbiceps1" do
    get shouldersbiceps1_url(@shouldersbiceps1)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbiceps1_url(@shouldersbiceps1)
    assert_response :success
  end

  test "should update shouldersbiceps1" do
    patch shouldersbiceps1_url(@shouldersbiceps1), params: { shouldersbiceps1: { exercise: @shouldersbiceps1.exercise, reps: @shouldersbiceps1.reps, sets: @shouldersbiceps1.sets } }
    assert_redirected_to shouldersbiceps1_url(@shouldersbiceps1)
  end

  test "should destroy shouldersbiceps1" do
    assert_difference('Shouldersbiceps1.count', -1) do
      delete shouldersbiceps1_url(@shouldersbiceps1)
    end

    assert_redirected_to shouldersbiceps1s_url
  end
end
