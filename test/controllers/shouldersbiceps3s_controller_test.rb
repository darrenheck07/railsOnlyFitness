require 'test_helper'

class Shouldersbiceps3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbiceps3 = shouldersbiceps3s(:one)
  end

  test "should get index" do
    get shouldersbiceps3s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbiceps3_url
    assert_response :success
  end

  test "should create shouldersbiceps3" do
    assert_difference('Shouldersbiceps3.count') do
      post shouldersbiceps3s_url, params: { shouldersbiceps3: { exercise: @shouldersbiceps3.exercise, reps: @shouldersbiceps3.reps, sets: @shouldersbiceps3.sets } }
    end

    assert_redirected_to shouldersbiceps3_url(Shouldersbiceps3.last)
  end

  test "should show shouldersbiceps3" do
    get shouldersbiceps3_url(@shouldersbiceps3)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbiceps3_url(@shouldersbiceps3)
    assert_response :success
  end

  test "should update shouldersbiceps3" do
    patch shouldersbiceps3_url(@shouldersbiceps3), params: { shouldersbiceps3: { exercise: @shouldersbiceps3.exercise, reps: @shouldersbiceps3.reps, sets: @shouldersbiceps3.sets } }
    assert_redirected_to shouldersbiceps3_url(@shouldersbiceps3)
  end

  test "should destroy shouldersbiceps3" do
    assert_difference('Shouldersbiceps3.count', -1) do
      delete shouldersbiceps3_url(@shouldersbiceps3)
    end

    assert_redirected_to shouldersbiceps3s_url
  end
end
