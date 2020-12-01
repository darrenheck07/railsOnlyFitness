require "application_system_test_case"

class Legshome1sTest < ApplicationSystemTestCase
  setup do
    @legshome1 = legshome1s(:one)
  end

  test "visiting the index" do
    visit legshome1s_url
    assert_selector "h1", text: "Legshome1s"
  end

  test "creating a Legshome1" do
    visit legshome1s_url
    click_on "New Legshome1"

    fill_in "Exercise", with: @legshome1.exercise
    fill_in "Reps", with: @legshome1.reps
    fill_in "Sets", with: @legshome1.sets
    click_on "Create Legshome1"

    assert_text "Legshome1 was successfully created"
    click_on "Back"
  end

  test "updating a Legshome1" do
    visit legshome1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legshome1.exercise
    fill_in "Reps", with: @legshome1.reps
    fill_in "Sets", with: @legshome1.sets
    click_on "Update Legshome1"

    assert_text "Legshome1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legshome1" do
    visit legshome1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legshome1 was successfully destroyed"
  end
end
