require "application_system_test_case"

class Shouldersbiceps1sTest < ApplicationSystemTestCase
  setup do
    @shouldersbiceps1 = shouldersbiceps1s(:one)
  end

  test "visiting the index" do
    visit shouldersbiceps1s_url
    assert_selector "h1", text: "Shouldersbiceps1s"
  end

  test "creating a Shouldersbiceps1" do
    visit shouldersbiceps1s_url
    click_on "New Shouldersbiceps1"

    fill_in "Exercise", with: @shouldersbiceps1.exercise
    fill_in "Reps", with: @shouldersbiceps1.reps
    fill_in "Sets", with: @shouldersbiceps1.sets
    click_on "Create Shouldersbiceps1"

    assert_text "Shouldersbiceps1 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbiceps1" do
    visit shouldersbiceps1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbiceps1.exercise
    fill_in "Reps", with: @shouldersbiceps1.reps
    fill_in "Sets", with: @shouldersbiceps1.sets
    click_on "Update Shouldersbiceps1"

    assert_text "Shouldersbiceps1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbiceps1" do
    visit shouldersbiceps1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbiceps1 was successfully destroyed"
  end
end
