require 'test_helper'

class Legs2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legs2 = legs2s(:one)
  end

  test "should get index" do
    get legs2s_url
    assert_response :success
  end

  test "should get new" do
    get new_legs2_url
    assert_response :success
  end

  test "should create legs2" do
    assert_difference('Legs2.count') do
      post legs2s_url, params: { legs2: { exercise: @legs2.exercise, reps: @legs2.reps, sets: @legs2.sets } }
    end

    assert_redirected_to legs2_url(Legs2.last)
  end

  test "should show legs2" do
    get legs2_url(@legs2)
    assert_response :success
  end

  test "should get edit" do
    get edit_legs2_url(@legs2)
    assert_response :success
  end

  test "should update legs2" do
    patch legs2_url(@legs2), params: { legs2: { exercise: @legs2.exercise, reps: @legs2.reps, sets: @legs2.sets } }
    assert_redirected_to legs2_url(@legs2)
  end

  test "should destroy legs2" do
    assert_difference('Legs2.count', -1) do
      delete legs2_url(@legs2)
    end

    assert_redirected_to legs2s_url
  end
end
