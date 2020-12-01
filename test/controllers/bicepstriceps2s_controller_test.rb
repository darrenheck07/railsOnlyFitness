require 'test_helper'

class Bicepstriceps2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bicepstriceps2 = bicepstriceps2s(:one)
  end

  test "should get index" do
    get bicepstriceps2s_url
    assert_response :success
  end

  test "should get new" do
    get new_bicepstriceps2_url
    assert_response :success
  end

  test "should create bicepstriceps2" do
    assert_difference('Bicepstriceps2.count') do
      post bicepstriceps2s_url, params: { bicepstriceps2: { exercise: @bicepstriceps2.exercise, reps: @bicepstriceps2.reps, sets: @bicepstriceps2.sets } }
    end

    assert_redirected_to bicepstriceps2_url(Bicepstriceps2.last)
  end

  test "should show bicepstriceps2" do
    get bicepstriceps2_url(@bicepstriceps2)
    assert_response :success
  end

  test "should get edit" do
    get edit_bicepstriceps2_url(@bicepstriceps2)
    assert_response :success
  end

  test "should update bicepstriceps2" do
    patch bicepstriceps2_url(@bicepstriceps2), params: { bicepstriceps2: { exercise: @bicepstriceps2.exercise, reps: @bicepstriceps2.reps, sets: @bicepstriceps2.sets } }
    assert_redirected_to bicepstriceps2_url(@bicepstriceps2)
  end

  test "should destroy bicepstriceps2" do
    assert_difference('Bicepstriceps2.count', -1) do
      delete bicepstriceps2_url(@bicepstriceps2)
    end

    assert_redirected_to bicepstriceps2s_url
  end
end
