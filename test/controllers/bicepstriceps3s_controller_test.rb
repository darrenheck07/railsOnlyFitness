require 'test_helper'

class Bicepstriceps3sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstriceps3 = bicepstriceps3s(:one)
  end

  test "should get index" do
    get bicepstriceps3s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstriceps3_url
    assert_response :success
  end

  test "should create bicepstriceps3" do
    assert_difference('Bicepstriceps3.count') do
      post bicepstriceps3s_url, params: { bicepstriceps3: { exercise: @bicepstriceps3.exercise, reps: @bicepstriceps3.reps, sets: @bicepstriceps3.sets } }
    end

    assert_redirected_to bicepstriceps3_url(Bicepstriceps3.last)
  end

  test "should show bicepstriceps3" do
    get bicepstriceps3_url(@bicepstriceps3)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstriceps3_url(@bicepstriceps3)
    assert_response :success
  end

  test "should update bicepstriceps3" do
    patch bicepstriceps3_url(@bicepstriceps3), params: { bicepstriceps3: { exercise: @bicepstriceps3.exercise, reps: @bicepstriceps3.reps, sets: @bicepstriceps3.sets } }
    assert_redirected_to bicepstriceps3_url(@bicepstriceps3)
  end

  test "should destroy bicepstriceps3" do
    assert_difference('Bicepstriceps3.count', -1) do
      delete bicepstriceps3_url(@bicepstriceps3)
    end

    assert_redirected_to bicepstriceps3s_url
  end
end
