require 'test_helper'

class Bicepstricepshome3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstricepshome3 = bicepstricepshome3s(:one)
  end

  test "should get index" do
    get bicepstricepshome3s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstricepshome3_url
    assert_response :success
  end

  test "should create bicepstricepshome3" do
    assert_difference('Bicepstricepshome3.count') do
      post bicepstricepshome3s_url, params: { bicepstricepshome3: { exercise: @bicepstricepshome3.exercise, reps: @bicepstricepshome3.reps, sets: @bicepstricepshome3.sets } }
    end

    assert_redirected_to bicepstricepshome3_url(Bicepstricepshome3.last)
  end

  test "should show bicepstricepshome3" do
    get bicepstricepshome3_url(@bicepstricepshome3)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstricepshome3_url(@bicepstricepshome3)
    assert_response :success
  end

  test "should update bicepstricepshome3" do
    patch bicepstricepshome3_url(@bicepstricepshome3), params: { bicepstricepshome3: { exercise: @bicepstricepshome3.exercise, reps: @bicepstricepshome3.reps, sets: @bicepstricepshome3.sets } }
    assert_redirected_to bicepstricepshome3_url(@bicepstricepshome3)
  end

  test "should destroy bicepstricepshome3" do
    assert_difference('Bicepstricepshome3.count', -1) do
      delete bicepstricepshome3_url(@bicepstricepshome3)
    end

    assert_redirected_to bicepstricepshome3s_url
  end
end
