require "application_system_test_case"

class Shouldersbicepshome3sTest < ApplicationSystemTestCase
  setup do
    @shouldersbicepshome3 = shouldersbicepshome3s(:one)
  end

  test "visiting the index" do
    visit shouldersbicepshome3s_url
    assert_selector "h1", text: "Shouldersbicepshome3s"
  end

  test "creating a Shouldersbicepshome3" do
    visit shouldersbicepshome3s_url
    click_on "New Shouldersbicepshome3"

    fill_in "Exercise", with: @shouldersbicepshome3.exercise
    fill_in "Reps", with: @shouldersbicepshome3.reps
    fill_in "Sets", with: @shouldersbicepshome3.sets
    click_on "Create Shouldersbicepshome3"

    assert_text "Shouldersbicepshome3 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbicepshome3" do
    visit shouldersbicepshome3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbicepshome3.exercise
    fill_in "Reps", with: @shouldersbicepshome3.reps
    fill_in "Sets", with: @shouldersbicepshome3.sets
    click_on "Update Shouldersbicepshome3"

    assert_text "Shouldersbicepshome3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbicepshome3" do
    visit shouldersbicepshome3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbicepshome3 was successfully destroyed"
  end
end
