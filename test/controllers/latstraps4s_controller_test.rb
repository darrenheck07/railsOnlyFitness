require 'test_helper'

class Latstraps4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latstraps4 = latstraps4s(:one)
  end

  test "should get index" do
    get latstraps4s_url
    assert_response :success
  end

  test "should get new" do
    get new_latstraps4_url
    assert_response :success
  end

  test "should create latstraps4" do
    assert_difference('Latstraps4.count') do
      post latstraps4s_url, params: { latstraps4: { exercise: @latstraps4.exercise, reps: @latstraps4.reps, sets: @latstraps4.sets } }
    end

    assert_redirected_to latstraps4_url(Latstraps4.last)
  end

  test "should show latstraps4" do
    get latstraps4_url(@latstraps4)
    assert_response :success
  end

  test "should get edit" do
    get edit_latstraps4_url(@latstraps4)
    assert_response :success
  end

  test "should update latstraps4" do
    patch latstraps4_url(@latstraps4), params: { latstraps4: { exercise: @latstraps4.exercise, reps: @latstraps4.reps, sets: @latstraps4.sets } }
    assert_redirected_to latstraps4_url(@latstraps4)
  end

  test "should destroy latstraps4" do
    assert_difference('Latstraps4.count', -1) do
      delete latstraps4_url(@latstraps4)
    end

    assert_redirected_to latstraps4s_url
  end
end
