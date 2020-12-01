require 'test_helper'

class Legs4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legs4 = legs4s(:one)
  end

  test "should get index" do
    get legs4s_url
    assert_response :success
  end

  test "should get new" do
    get new_legs4_url
    assert_response :success
  end

  test "should create legs4" do
    assert_difference('Legs4.count') do
      post legs4s_url, params: { legs4: { exercise: @legs4.exercise, reps: @legs4.reps, sets: @legs4.sets } }
    end

    assert_redirected_to legs4_url(Legs4.last)
  end

  test "should show legs4" do
    get legs4_url(@legs4)
    assert_response :success
  end

  test "should get edit" do
    get edit_legs4_url(@legs4)
    assert_response :success
  end

  test "should update legs4" do
    patch legs4_url(@legs4), params: { legs4: { exercise: @legs4.exercise, reps: @legs4.reps, sets: @legs4.sets } }
    assert_redirected_to legs4_url(@legs4)
  end

  test "should destroy legs4" do
    assert_difference('Legs4.count', -1) do
      delete legs4_url(@legs4)
    end

    assert_redirected_to legs4s_url
  end
end
