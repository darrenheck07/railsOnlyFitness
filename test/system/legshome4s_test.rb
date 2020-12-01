require "application_system_test_case"

class Legshome4sTest < ApplicationSystemTestCase
  setup do
    @legshome4 = legshome4s(:one)
  end

  test "visiting the index" do
    visit legshome4s_url
    assert_selector "h1", text: "Legshome4s"
  end

  test "creating a Legshome4" do
    visit legshome4s_url
    click_on "New Legshome4"

    fill_in "Exercise", with: @legshome4.exercise
    fill_in "Reps", with: @legshome4.reps
    fill_in "Sets", with: @legshome4.sets
    click_on "Create Legshome4"

    assert_text "Legshome4 was successfully created"
    click_on "Back"
  end

  test "updating a Legshome4" do
    visit legshome4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legshome4.exercise
    fill_in "Reps", with: @legshome4.reps
    fill_in "Sets", with: @legshome4.sets
    click_on "Update Legshome4"

    assert_text "Legshome4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legshome4" do
    visit legshome4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legshome4 was successfully destroyed"
  end
end
