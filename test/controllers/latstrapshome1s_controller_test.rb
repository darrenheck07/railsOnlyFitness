require 'test_helper'

class Latstrapshome1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstrapshome1 = latstrapshome1s(:one)
  end

  test "should get index" do
    get latstrapshome1s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstrapshome1_url
    assert_response :success
  end

  test "should create latstrapshome1" do
    assert_difference('Latstrapshome1.count') do
      post latstrapshome1s_url, params: { latstrapshome1: { exercise: @latstrapshome1.exercise, reps: @latstrapshome1.reps, sets: @latstrapshome1.sets } }
    end

    assert_redirected_to latstrapshome1_url(Latstrapshome1.last)
  end

  test "should show latstrapshome1" do
    get latstrapshome1_url(@latstrapshome1)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstrapshome1_url(@latstrapshome1)
    assert_response :success
  end

  test "should update latstrapshome1" do
    patch latstrapshome1_url(@latstrapshome1), params: { latstrapshome1: { exercise: @latstrapshome1.exercise, reps: @latstrapshome1.reps, sets: @latstrapshome1.sets } }
    assert_redirected_to latstrapshome1_url(@latstrapshome1)
  end

  test "should destroy latstrapshome1" do
    assert_difference('Latstrapshome1.count', -1) do
      delete latstrapshome1_url(@latstrapshome1)
    end

    assert_redirected_to latstrapshome1s_url
  end
end
