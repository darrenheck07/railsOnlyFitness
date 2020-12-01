require 'test_helper'

class Shouldersbiceps2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shouldersbiceps2 = shouldersbiceps2s(:one)
  end

  test "should get index" do
    get shouldersbiceps2s_url
    assert_response :success
  end

  test "should get new" do
    get new_shouldersbiceps2_url
    assert_response :success
  end

  test "should create shouldersbiceps2" do
    assert_difference('Shouldersbiceps2.count') do
      post shouldersbiceps2s_url, params: { shouldersbiceps2: { exercise: @shouldersbiceps2.exercise, reps: @shouldersbiceps2.reps, sets: @shouldersbiceps2.sets } }
    end

    assert_redirected_to shouldersbiceps2_url(Shouldersbiceps2.last)
  end

  test "should show shouldersbiceps2" do
    get shouldersbiceps2_url(@shouldersbiceps2)
    assert_response :success
  end

  test "should get edit" do
    get edit_shouldersbiceps2_url(@shouldersbiceps2)
    assert_response :success
  end

  test "should update shouldersbiceps2" do
    patch shouldersbiceps2_url(@shouldersbiceps2), params: { shouldersbiceps2: { exercise: @shouldersbiceps2.exercise, reps: @shouldersbiceps2.reps, sets: @shouldersbiceps2.sets } }
    assert_redirected_to shouldersbiceps2_url(@shouldersbiceps2)
  end

  test "should destroy shouldersbiceps2" do
    assert_difference('Shouldersbiceps2.count', -1) do
      delete shouldersbiceps2_url(@shouldersbiceps2)
    end

    assert_redirected_to shouldersbiceps2s_url
  end
end
