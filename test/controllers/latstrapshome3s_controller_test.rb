require 'test_helper'

class Latstrapshome3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstrapshome3 = latstrapshome3s(:one)
  end

  test "should get index" do
    get latstrapshome3s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstrapshome3_url
    assert_response :success
  end

  test "should create latstrapshome3" do
    assert_difference('Latstrapshome3.count') do
      post latstrapshome3s_url, params: { latstrapshome3: { exercise: @latstrapshome3.exercise, reps: @latstrapshome3.reps, sets: @latstrapshome3.sets } }
    end

    assert_redirected_to latstrapshome3_url(Latstrapshome3.last)
  end

  test "should show latstrapshome3" do
    get latstrapshome3_url(@latstrapshome3)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstrapshome3_url(@latstrapshome3)
    assert_response :success
  end

  test "should update latstrapshome3" do
    patch latstrapshome3_url(@latstrapshome3), params: { latstrapshome3: { exercise: @latstrapshome3.exercise, reps: @latstrapshome3.reps, sets: @latstrapshome3.sets } }
    assert_redirected_to latstrapshome3_url(@latstrapshome3)
  end

  test "should destroy latstrapshome3" do
    assert_difference('Latstrapshome3.count', -1) do
      delete latstrapshome3_url(@latstrapshome3)
    end

    assert_redirected_to latstrapshome3s_url
  end
end
