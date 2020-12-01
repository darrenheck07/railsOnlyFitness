require 'test_helper'

class Bicepstriceps1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstriceps1 = bicepstriceps1s(:one)
  end

  test "should get index" do
    get bicepstriceps1s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstriceps1_url
    assert_response :success
  end

  test "should create bicepstriceps1" do
    assert_difference('Bicepstriceps1.count') do
      post bicepstriceps1s_url, params: { bicepstriceps1: { exercise: @bicepstriceps1.exercise, reps: @bicepstriceps1.reps, sets: @bicepstriceps1.sets } }
    end

    assert_redirected_to bicepstriceps1_url(Bicepstriceps1.last)
  end

  test "should show bicepstriceps1" do
    get bicepstriceps1_url(@bicepstriceps1)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstriceps1_url(@bicepstriceps1)
    assert_response :success
  end

  test "should update bicepstriceps1" do
    patch bicepstriceps1_url(@bicepstriceps1), params: { bicepstriceps1: { exercise: @bicepstriceps1.exercise, reps: @bicepstriceps1.reps, sets: @bicepstriceps1.sets } }
    assert_redirected_to bicepstriceps1_url(@bicepstriceps1)
  end

  test "should destroy bicepstriceps1" do
    assert_difference('Bicepstriceps1.count', -1) do
      delete bicepstriceps1_url(@bicepstriceps1)
    end

    assert_redirected_to bicepstriceps1s_url
  end
end
