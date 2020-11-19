require "application_system_test_case"

class Latstrapshome1sTest < ApplicationSystemTestCase
  setup do
    @latstrapshome1 = latstrapshome1s(:one)
  end

  test "visiting the index" do
    visit latstrapshome1s_url
    assert_selector "h1", text: "Latstrapshome1s"
  end

  test "creating a Latstrapshome1" do
    visit latstrapshome1s_url
    click_on "New Latstrapshome1"

    fill_in "Exercise", with: @latstrapshome1.exercise
    fill_in "Reps", with: @latstrapshome1.reps
    fill_in "Sets", with: @latstrapshome1.sets
    click_on "Create Latstrapshome1"

    assert_text "Latstrapshome1 was successfully created"
    click_on "Back"
  end

  test "updating a Latstrapshome1" do
    visit latstrapshome1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstrapshome1.exercise
    fill_in "Reps", with: @latstrapshome1.reps
    fill_in "Sets", with: @latstrapshome1.sets
    click_on "Update Latstrapshome1"

    assert_text "Latstrapshome1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstrapshome1" do
    visit latstrapshome1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstrapshome1 was successfully destroyed"
  end
end
