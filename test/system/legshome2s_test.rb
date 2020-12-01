require "application_system_test_case"

class Legshome2sTest < ApplicationSystemTestCase
  setup do
    @legshome2 = legshome2s(:one)
  end

  test "visiting the index" do
    visit legshome2s_url
    assert_selector "h1", text: "Legshome2s"
  end

  test "creating a Legshome2" do
    visit legshome2s_url
    click_on "New Legshome2"

    fill_in "Exercise", with: @legshome2.exercise
    fill_in "Reps", with: @legshome2.reps
    fill_in "Sets", with: @legshome2.sets
    click_on "Create Legshome2"

    assert_text "Legshome2 was successfully created"
    click_on "Back"
  end

  test "updating a Legshome2" do
    visit legshome2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legshome2.exercise
    fill_in "Reps", with: @legshome2.reps
    fill_in "Sets", with: @legshome2.sets
    click_on "Update Legshome2"

    assert_text "Legshome2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legshome2" do
    visit legshome2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legshome2 was successfully destroyed"
  end
end
