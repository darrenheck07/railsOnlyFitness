require "application_system_test_case"

class Shouldersbiceps4sTest < ApplicationSystemTestCase
  setup do
    @shouldersbiceps4 = shouldersbiceps4s(:one)
  end

  test "visiting the index" do
    visit shouldersbiceps4s_url
    assert_selector "h1", text: "Shouldersbiceps4s"
  end

  test "creating a Shouldersbiceps4" do
    visit shouldersbiceps4s_url
    click_on "New Shouldersbiceps4"

    fill_in "Exercise", with: @shouldersbiceps4.exercise
    fill_in "Reps", with: @shouldersbiceps4.reps
    fill_in "Sets", with: @shouldersbiceps4.sets
    click_on "Create Shouldersbiceps4"

    assert_text "Shouldersbiceps4 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbiceps4" do
    visit shouldersbiceps4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbiceps4.exercise
    fill_in "Reps", with: @shouldersbiceps4.reps
    fill_in "Sets", with: @shouldersbiceps4.sets
    click_on "Update Shouldersbiceps4"

    assert_text "Shouldersbiceps4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbiceps4" do
    visit shouldersbiceps4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbiceps4 was successfully destroyed"
  end
end
