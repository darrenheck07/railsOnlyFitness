require 'test_helper'

class ChestTriceps1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chest_triceps1 = chest_triceps1s(:one)
  end

  test "should get index" do
    get chest_triceps1s_url
    assert_response :success
  end

  test "should get new" do
    get new_chest_triceps1_url
    assert_response :success
  end

  test "should create chest_triceps1" do
    assert_difference('ChestTriceps1.count') do
      post chest_triceps1s_url, params: { chest_triceps1: { exercise: @chest_triceps1.exercise, reps: @chest_triceps1.reps, sets: @chest_triceps1.sets } }
    end

    assert_redirected_to chest_triceps1_url(ChestTriceps1.last)
  end

  test "should show chest_triceps1" do
    get chest_triceps1_url(@chest_triceps1)
    assert_response :success
  end

  test "should get edit" do
    get edit_chest_triceps1_url(@chest_triceps1)
    assert_response :success
  end

  test "should update chest_triceps1" do
    patch chest_triceps1_url(@chest_triceps1), params: { chest_triceps1: { exercise: @chest_triceps1.exercise, reps: @chest_triceps1.reps, sets: @chest_triceps1.sets } }
    assert_redirected_to chest_triceps1_url(@chest_triceps1)
  end

  test "should destroy chest_triceps1" do
    assert_difference('ChestTriceps1.count', -1) do
      delete chest_triceps1_url(@chest_triceps1)
    end

    assert_redirected_to chest_triceps1s_url
  end
end
