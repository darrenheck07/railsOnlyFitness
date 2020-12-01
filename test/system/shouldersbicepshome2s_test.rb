require "application_system_test_case"

class Shouldersbicepshome2sTest < ApplicationSystemTestCase
  setup do
    @shouldersbicepshome2 = shouldersbicepshome2s(:one)
  end

  test "visiting the index" do
    visit shouldersbicepshome2s_url
    assert_selector "h1", text: "Shouldersbicepshome2s"
  end

  test "creating a Shouldersbicepshome2" do
    visit shouldersbicepshome2s_url
    click_on "New Shouldersbicepshome2"

    fill_in "Exercise", with: @shouldersbicepshome2.exercise
    fill_in "Reps", with: @shouldersbicepshome2.reps
    fill_in "Sets", with: @shouldersbicepshome2.sets
    click_on "Create Shouldersbicepshome2"

    assert_text "Shouldersbicepshome2 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbicepshome2" do
    visit shouldersbicepshome2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbicepshome2.exercise
    fill_in "Reps", with: @shouldersbicepshome2.reps
    fill_in "Sets", with: @shouldersbicepshome2.sets
    click_on "Update Shouldersbicepshome2"

    assert_text "Shouldersbicepshome2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbicepshome2" do
    visit shouldersbicepshome2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbicepshome2 was successfully destroyed"
  end
end
