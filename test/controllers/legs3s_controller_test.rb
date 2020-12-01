require 'test_helper'

class Legs3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legs3 = legs3s(:one)
  end

  test "should get index" do
    get legs3s_url
    assert_response :success
  end

  test "should get new" do
    get new_legs3_url
    assert_response :success
  end

  test "should create legs3" do
    assert_difference('Legs3.count') do
      post legs3s_url, params: { legs3: { exercise: @legs3.exercise, reps: @legs3.reps, sets: @legs3.sets } }
    end

    assert_redirected_to legs3_url(Legs3.last)
  end

  test "should show legs3" do
    get legs3_url(@legs3)
    assert_response :success
  end

  test "should get edit" do
    get edit_legs3_url(@legs3)
    assert_response :success
  end

  test "should update legs3" do
    patch legs3_url(@legs3), params: { legs3: { exercise: @legs3.exercise, reps: @legs3.reps, sets: @legs3.sets } }
    assert_redirected_to legs3_url(@legs3)
  end

  test "should destroy legs3" do
    assert_difference('Legs3.count', -1) do
      delete legs3_url(@legs3)
    end

    assert_redirected_to legs3s_url
  end
end
