require 'test_helper'

class Chesttriceps2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chesttriceps2 = chesttriceps2s(:one)
  end

  test "should get index" do
    get chesttriceps2s_url
    assert_response :success
  end

  test "should get new" do
    get new_chesttriceps2_url
    assert_response :success
  end

  test "should create chesttriceps2" do
    assert_difference('Chesttriceps2.count') do
      post chesttriceps2s_url, params: { chesttriceps2: { exercise: @chesttriceps2.exercise, reps: @chesttriceps2.reps, sets: @chesttriceps2.sets } }
    end

    assert_redirected_to chesttriceps2_url(Chesttriceps2.last)
  end

  test "should show chesttriceps2" do
    get chesttriceps2_url(@chesttriceps2)
    assert_response :success
  end

  test "should get edit" do
    get edit_chesttriceps2_url(@chesttriceps2)
    assert_response :success
  end

  test "should update chesttriceps2" do
    patch chesttriceps2_url(@chesttriceps2), params: { chesttriceps2: { exercise: @chesttriceps2.exercise, reps: @chesttriceps2.reps, sets: @chesttriceps2.sets } }
    assert_redirected_to chesttriceps2_url(@chesttriceps2)
  end

  test "should destroy chesttriceps2" do
    assert_difference('Chesttriceps2.count', -1) do
      delete chesttriceps2_url(@chesttriceps2)
    end

    assert_redirected_to chesttriceps2s_url
  end
end
