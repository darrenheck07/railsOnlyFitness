require "application_system_test_case"

class Shouldersbicepshome4sTest < ApplicationSystemTestCase
  setup do
    @shouldersbicepshome4 = shouldersbicepshome4s(:one)
  end

  test "visiting the index" do
    visit shouldersbicepshome4s_url
    assert_selector "h1", text: "Shouldersbicepshome4s"
  end

  test "creating a Shouldersbicepshome4" do
    visit shouldersbicepshome4s_url
    click_on "New Shouldersbicepshome4"

    fill_in "Exercise", with: @shouldersbicepshome4.exercise
    fill_in "Reps", with: @shouldersbicepshome4.reps
    fill_in "Sets", with: @shouldersbicepshome4.sets
    click_on "Create Shouldersbicepshome4"

    assert_text "Shouldersbicepshome4 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbicepshome4" do
    visit shouldersbicepshome4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbicepshome4.exercise
    fill_in "Reps", with: @shouldersbicepshome4.reps
    fill_in "Sets", with: @shouldersbicepshome4.sets
    click_on "Update Shouldersbicepshome4"

    assert_text "Shouldersbicepshome4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbicepshome4" do
    visit shouldersbicepshome4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbicepshome4 was successfully destroyed"
  end
end
