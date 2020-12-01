require 'test_helper'

class Bicepstriceps4sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstriceps4 = bicepstriceps4s(:one)
  end

  test "should get index" do
    get bicepstriceps4s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstriceps4_url
    assert_response :success
  end

  test "should create bicepstriceps4" do
    assert_difference('Bicepstriceps4.count') do
      post bicepstriceps4s_url, params: { bicepstriceps4: { exercise: @bicepstriceps4.exercise, reps: @bicepstriceps4.reps, sets: @bicepstriceps4.sets } }
    end

    assert_redirected_to bicepstriceps4_url(Bicepstriceps4.last)
  end

  test "should show bicepstriceps4" do
    get bicepstriceps4_url(@bicepstriceps4)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstriceps4_url(@bicepstriceps4)
    assert_response :success
  end

  test "should update bicepstriceps4" do
    patch bicepstriceps4_url(@bicepstriceps4), params: { bicepstriceps4: { exercise: @bicepstriceps4.exercise, reps: @bicepstriceps4.reps, sets: @bicepstriceps4.sets } }
    assert_redirected_to bicepstriceps4_url(@bicepstriceps4)
  end

  test "should destroy bicepstriceps4" do
    assert_difference('Bicepstriceps4.count', -1) do
      delete bicepstriceps4_url(@bicepstriceps4)
    end

    assert_redirected_to bicepstriceps4s_url
  end
end
