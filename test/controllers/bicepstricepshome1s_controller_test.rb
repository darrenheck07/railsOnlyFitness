require 'test_helper'

class Bicepstricepshome1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstricepshome1 = bicepstricepshome1s(:one)
  end

  test "should get index" do
    get bicepstricepshome1s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstricepshome1_url
    assert_response :success
  end

  test "should create bicepstricepshome1" do
    assert_difference('Bicepstricepshome1.count') do
      post bicepstricepshome1s_url, params: { bicepstricepshome1: { exercise: @bicepstricepshome1.exercise, reps: @bicepstricepshome1.reps, sets: @bicepstricepshome1.sets } }
    end

    assert_redirected_to bicepstricepshome1_url(Bicepstricepshome1.last)
  end

  test "should show bicepstricepshome1" do
    get bicepstricepshome1_url(@bicepstricepshome1)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstricepshome1_url(@bicepstricepshome1)
    assert_response :success
  end

  test "should update bicepstricepshome1" do
    patch bicepstricepshome1_url(@bicepstricepshome1), params: { bicepstricepshome1: { exercise: @bicepstricepshome1.exercise, reps: @bicepstricepshome1.reps, sets: @bicepstricepshome1.sets } }
    assert_redirected_to bicepstricepshome1_url(@bicepstricepshome1)
  end

  test "should destroy bicepstricepshome1" do
    assert_difference('Bicepstricepshome1.count', -1) do
      delete bicepstricepshome1_url(@bicepstricepshome1)
    end

    assert_redirected_to bicepstricepshome1s_url
  end
end
