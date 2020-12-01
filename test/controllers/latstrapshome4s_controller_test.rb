require 'test_helper'

class Latstrapshome4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstrapshome4 = latstrapshome4s(:one)
  end

  test "should get index" do
    get latstrapshome4s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstrapshome4_url
    assert_response :success
  end

  test "should create latstrapshome4" do
    assert_difference('Latstrapshome4.count') do
      post latstrapshome4s_url, params: { latstrapshome4: { exercise: @latstrapshome4.exercise, reps: @latstrapshome4.reps, sets: @latstrapshome4.sets } }
    end

    assert_redirected_to latstrapshome4_url(Latstrapshome4.last)
  end

  test "should show latstrapshome4" do
    get latstrapshome4_url(@latstrapshome4)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstrapshome4_url(@latstrapshome4)
    assert_response :success
  end

  test "should update latstrapshome4" do
    patch latstrapshome4_url(@latstrapshome4), params: { latstrapshome4: { exercise: @latstrapshome4.exercise, reps: @latstrapshome4.reps, sets: @latstrapshome4.sets } }
    assert_redirected_to latstrapshome4_url(@latstrapshome4)
  end

  test "should destroy latstrapshome4" do
    assert_difference('Latstrapshome4.count', -1) do
      delete latstrapshome4_url(@latstrapshome4)
    end

    assert_redirected_to latstrapshome4s_url
  end
end
