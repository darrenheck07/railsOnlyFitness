require 'test_helper'

class Latstraps3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstraps3 = latstraps3s(:one)
  end

  test "should get index" do
    get latstraps3s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstraps3_url
    assert_response :success
  end

  test "should create latstraps3" do
    assert_difference('Latstraps3.count') do
      post latstraps3s_url, params: { latstraps3: { exercise: @latstraps3.exercise, reps: @latstraps3.reps, sets: @latstraps3.sets } }
    end

    assert_redirected_to latstraps3_url(Latstraps3.last)
  end

  test "should show latstraps3" do
    get latstraps3_url(@latstraps3)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstraps3_url(@latstraps3)
    assert_response :success
  end

  test "should update latstraps3" do
    patch latstraps3_url(@latstraps3), params: { latstraps3: { exercise: @latstraps3.exercise, reps: @latstraps3.reps, sets: @latstraps3.sets } }
    assert_redirected_to latstraps3_url(@latstraps3)
  end

  test "should destroy latstraps3" do
    assert_difference('Latstraps3.count', -1) do
      delete latstraps3_url(@latstraps3)
    end

    assert_redirected_to latstraps3s_url
  end
end
