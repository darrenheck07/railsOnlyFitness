require 'test_helper'

class Bicepstricepshome2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstricepshome2 = bicepstricepshome2s(:one)
  end

  test "should get index" do
    get bicepstricepshome2s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstricepshome2_url
    assert_response :success
  end

  test "should create bicepstricepshome2" do
    assert_difference('Bicepstricepshome2.count') do
      post bicepstricepshome2s_url, params: { bicepstricepshome2: { exercise: @bicepstricepshome2.exercise, reps: @bicepstricepshome2.reps, sets: @bicepstricepshome2.sets } }
    end

    assert_redirected_to bicepstricepshome2_url(Bicepstricepshome2.last)
  end

  test "should show bicepstricepshome2" do
    get bicepstricepshome2_url(@bicepstricepshome2)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstricepshome2_url(@bicepstricepshome2)
    assert_response :success
  end

  test "should update bicepstricepshome2" do
    patch bicepstricepshome2_url(@bicepstricepshome2), params: { bicepstricepshome2: { exercise: @bicepstricepshome2.exercise, reps: @bicepstricepshome2.reps, sets: @bicepstricepshome2.sets } }
    assert_redirected_to bicepstricepshome2_url(@bicepstricepshome2)
  end

  test "should destroy bicepstricepshome2" do
    assert_difference('Bicepstricepshome2.count', -1) do
      delete bicepstricepshome2_url(@bicepstricepshome2)
    end

    assert_redirected_to bicepstricepshome2s_url
  end
end
