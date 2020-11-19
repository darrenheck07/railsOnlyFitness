require "application_system_test_case"

class Shouldersbicepshome1sTest < ApplicationSystemTestCase
  setup do
    @shouldersbicepshome1 = shouldersbicepshome1s(:one)
  end

  test "visiting the index" do
    visit shouldersbicepshome1s_url
    assert_selector "h1", text: "Shouldersbicepshome1s"
  end

  test "creating a Shouldersbicepshome1" do
    visit shouldersbicepshome1s_url
    click_on "New Shouldersbicepshome1"

    fill_in "Exercise", with: @shouldersbicepshome1.exercise
    fill_in "Reps", with: @shouldersbicepshome1.reps
    fill_in "Sets", with: @shouldersbicepshome1.sets
    click_on "Create Shouldersbicepshome1"

    assert_text "Shouldersbicepshome1 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbicepshome1" do
    visit shouldersbicepshome1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbicepshome1.exercise
    fill_in "Reps", with: @shouldersbicepshome1.reps
    fill_in "Sets", with: @shouldersbicepshome1.sets
    click_on "Update Shouldersbicepshome1"

    assert_text "Shouldersbicepshome1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbicepshome1" do
    visit shouldersbicepshome1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbicepshome1 was successfully destroyed"
  end
end
