require "application_system_test_case"

class Shouldersbiceps3sTest < ApplicationSystemTestCase
  setup do
    @shouldersbiceps3 = shouldersbiceps3s(:one)
  end

  test "visiting the index" do
    visit shouldersbiceps3s_url
    assert_selector "h1", text: "Shouldersbiceps3s"
  end

  test "creating a Shouldersbiceps3" do
    visit shouldersbiceps3s_url
    click_on "New Shouldersbiceps3"

    fill_in "Exercise", with: @shouldersbiceps3.exercise
    fill_in "Reps", with: @shouldersbiceps3.reps
    fill_in "Sets", with: @shouldersbiceps3.sets
    click_on "Create Shouldersbiceps3"

    assert_text "Shouldersbiceps3 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbiceps3" do
    visit shouldersbiceps3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbiceps3.exercise
    fill_in "Reps", with: @shouldersbiceps3.reps
    fill_in "Sets", with: @shouldersbiceps3.sets
    click_on "Update Shouldersbiceps3"

    assert_text "Shouldersbiceps3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbiceps3" do
    visit shouldersbiceps3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbiceps3 was successfully destroyed"
  end
end
