require 'test_helper'

class Latstraps1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstraps1 = latstraps1s(:one)
  end

  test "should get index" do
    get latstraps1s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstraps1_url
    assert_response :success
  end

  test "should create latstraps1" do
    assert_difference('Latstraps1.count') do
      post latstraps1s_url, params: { latstraps1: { exercise: @latstraps1.exercise, reps: @latstraps1.reps, sets: @latstraps1.sets } }
    end

    assert_redirected_to latstraps1_url(Latstraps1.last)
  end

  test "should show latstraps1" do
    get latstraps1_url(@latstraps1)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstraps1_url(@latstraps1)
    assert_response :success
  end

  test "should update latstraps1" do
    patch latstraps1_url(@latstraps1), params: { latstraps1: { exercise: @latstraps1.exercise, reps: @latstraps1.reps, sets: @latstraps1.sets } }
    assert_redirected_to latstraps1_url(@latstraps1)
  end

  test "should destroy latstraps1" do
    assert_difference('Latstraps1.count', -1) do
      delete latstraps1_url(@latstraps1)
    end

    assert_redirected_to latstraps1s_url
  end
end
