require 'test_helper'

class Legs1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @legs1 = legs1s(:one)
  end

  test "should get index" do
    get legs1s_url
    assert_response :success
  end

  test "should get new" do
    get new_legs1_url
    assert_response :success
  end

  test "should create legs1" do
    assert_difference('Legs1.count') do
      post legs1s_url, params: { legs1: { exercise: @legs1.exercise, reps: @legs1.reps, sets: @legs1.sets } }
    end

    assert_redirected_to legs1_url(Legs1.last)
  end

  test "should show legs1" do
    get legs1_url(@legs1)
    assert_response :success
  end

  test "should get edit" do
    get edit_legs1_url(@legs1)
    assert_response :success
  end

  test "should update legs1" do
    patch legs1_url(@legs1), params: { legs1: { exercise: @legs1.exercise, reps: @legs1.reps, sets: @legs1.sets } }
    assert_redirected_to legs1_url(@legs1)
  end

  test "should destroy legs1" do
    assert_difference('Legs1.count', -1) do
      delete legs1_url(@legs1)
    end

    assert_redirected_to legs1s_url
  end
end
