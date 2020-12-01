require "application_system_test_case"

class Legs3sTest < ApplicationSystemTestCase
  setup do
    @legs3 = legs3s(:one)
  end

  test "visiting the index" do
    visit legs3s_url
    assert_selector "h1", text: "Legs3s"
  end

  test "creating a Legs3" do
    visit legs3s_url
    click_on "New Legs3"

    fill_in "Exercise", with: @legs3.exercise
    fill_in "Reps", with: @legs3.reps
    fill_in "Sets", with: @legs3.sets
    click_on "Create Legs3"

    assert_text "Legs3 was successfully created"
    click_on "Back"
  end

  test "updating a Legs3" do
    visit legs3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legs3.exercise
    fill_in "Reps", with: @legs3.reps
    fill_in "Sets", with: @legs3.sets
    click_on "Update Legs3"

    assert_text "Legs3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legs3" do
    visit legs3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legs3 was successfully destroyed"
  end
end
