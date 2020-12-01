require 'test_helper'

class Latstrapshome2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstrapshome2 = latstrapshome2s(:one)
  end

  test "should get index" do
    get latstrapshome2s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstrapshome2_url
    assert_response :success
  end

  test "should create latstrapshome2" do
    assert_difference('Latstrapshome2.count') do
      post latstrapshome2s_url, params: { latstrapshome2: { exercise: @latstrapshome2.exercise, reps: @latstrapshome2.reps, sets: @latstrapshome2.sets } }
    end

    assert_redirected_to latstrapshome2_url(Latstrapshome2.last)
  end

  test "should show latstrapshome2" do
    get latstrapshome2_url(@latstrapshome2)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstrapshome2_url(@latstrapshome2)
    assert_response :success
  end

  test "should update latstrapshome2" do
    patch latstrapshome2_url(@latstrapshome2), params: { latstrapshome2: { exercise: @latstrapshome2.exercise, reps: @latstrapshome2.reps, sets: @latstrapshome2.sets } }
    assert_redirected_to latstrapshome2_url(@latstrapshome2)
  end

  test "should destroy latstrapshome2" do
    assert_difference('Latstrapshome2.count', -1) do
      delete latstrapshome2_url(@latstrapshome2)
    end

    assert_redirected_to latstrapshome2s_url
  end
end
