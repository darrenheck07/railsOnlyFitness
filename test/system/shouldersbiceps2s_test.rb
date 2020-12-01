require "application_system_test_case"

class Shouldersbiceps2sTest < ApplicationSystemTestCase
  setup do
    @shouldersbiceps2 = shouldersbiceps2s(:one)
  end

  test "visiting the index" do
    visit shouldersbiceps2s_url
    assert_selector "h1", text: "Shouldersbiceps2s"
  end

  test "creating a Shouldersbiceps2" do
    visit shouldersbiceps2s_url
    click_on "New Shouldersbiceps2"

    fill_in "Exercise", with: @shouldersbiceps2.exercise
    fill_in "Reps", with: @shouldersbiceps2.reps
    fill_in "Sets", with: @shouldersbiceps2.sets
    click_on "Create Shouldersbiceps2"

    assert_text "Shouldersbiceps2 was successfully created"
    click_on "Back"
  end

  test "updating a Shouldersbiceps2" do
    visit shouldersbiceps2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @shouldersbiceps2.exercise
    fill_in "Reps", with: @shouldersbiceps2.reps
    fill_in "Sets", with: @shouldersbiceps2.sets
    click_on "Update Shouldersbiceps2"

    assert_text "Shouldersbiceps2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Shouldersbiceps2" do
    visit shouldersbiceps2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shouldersbiceps2 was successfully destroyed"
  end
end
