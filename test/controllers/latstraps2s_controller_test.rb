require 'test_helper'

class Latstraps2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstraps2 = latstraps2s(:one)
  end

  test "should get index" do
    get latstraps2s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstraps2_url
    assert_response :success
  end

  test "should create latstraps2" do
    assert_difference('Latstraps2.count') do
      post latstraps2s_url, params: { latstraps2: { exercise: @latstraps2.exercise, reps: @latstraps2.reps, sets: @latstraps2.sets } }
    end

    assert_redirected_to latstraps2_url(Latstraps2.last)
  end

  test "should show latstraps2" do
    get latstraps2_url(@latstraps2)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstraps2_url(@latstraps2)
    assert_response :success
  end

  test "should update latstraps2" do
    patch latstraps2_url(@latstraps2), params: { latstraps2: { exercise: @latstraps2.exercise, reps: @latstraps2.reps, sets: @latstraps2.sets } }
    assert_redirected_to latstraps2_url(@latstraps2)
  end

  test "should destroy latstraps2" do
    assert_difference('Latstraps2.count', -1) do
      delete latstraps2_url(@latstraps2)
    end

    assert_redirected_to latstraps2s_url
  end
end
