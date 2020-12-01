require 'test_helper'

class Shouldersbiceps4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbiceps4 = shouldersbiceps4s(:one)
  end

  test "should get index" do
    get shouldersbiceps4s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbiceps4_url
    assert_response :success
  end

  test "should create shouldersbiceps4" do
    assert_difference('Shouldersbiceps4.count') do
      post shouldersbiceps4s_url, params: { shouldersbiceps4: { exercise: @shouldersbiceps4.exercise, reps: @shouldersbiceps4.reps, sets: @shouldersbiceps4.sets } }
    end

    assert_redirected_to shouldersbiceps4_url(Shouldersbiceps4.last)
  end

  test "should show shouldersbiceps4" do
    get shouldersbiceps4_url(@shouldersbiceps4)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbiceps4_url(@shouldersbiceps4)
    assert_response :success
  end

  test "should update shouldersbiceps4" do
    patch shouldersbiceps4_url(@shouldersbiceps4), params: { shouldersbiceps4: { exercise: @shouldersbiceps4.exercise, reps: @shouldersbiceps4.reps, sets: @shouldersbiceps4.sets } }
    assert_redirected_to shouldersbiceps4_url(@shouldersbiceps4)
  end

  test "should destroy shouldersbiceps4" do
    assert_difference('Shouldersbiceps4.count', -1) do
      delete shouldersbiceps4_url(@shouldersbiceps4)
    end

    assert_redirected_to shouldersbiceps4s_url
  end
end
