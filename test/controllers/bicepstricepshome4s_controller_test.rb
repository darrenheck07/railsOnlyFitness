require 'test_helper'

class Bicepstricepshome4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstricepshome4 = bicepstricepshome4s(:one)
  end

  test "should get index" do
    get bicepstricepshome4s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstricepshome4_url
    assert_response :success
  end

  test "should create bicepstricepshome4" do
    assert_difference('Bicepstricepshome4.count') do
      post bicepstricepshome4s_url, params: { bicepstricepshome4: { exercise: @bicepstricepshome4.exercise, reps: @bicepstricepshome4.reps, sets: @bicepstricepshome4.sets } }
    end

    assert_redirected_to bicepstricepshome4_url(Bicepstricepshome4.last)
  end

  test "should show bicepstricepshome4" do
    get bicepstricepshome4_url(@bicepstricepshome4)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstricepshome4_url(@bicepstricepshome4)
    assert_response :success
  end

  test "should update bicepstricepshome4" do
    patch bicepstricepshome4_url(@bicepstricepshome4), params: { bicepstricepshome4: { exercise: @bicepstricepshome4.exercise, reps: @bicepstricepshome4.reps, sets: @bicepstricepshome4.sets } }
    assert_redirected_to bicepstricepshome4_url(@bicepstricepshome4)
  end

  test "should destroy bicepstricepshome4" do
    assert_difference('Bicepstricepshome4.count', -1) do
      delete bicepstricepshome4_url(@bicepstricepshome4)
    end

    assert_redirected_to bicepstricepshome4s_url
  end
end
