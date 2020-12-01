require "application_system_test_case"

class Latstrapshome4sTest < ApplicationSystemTestCase
  setup do
    @latstrapshome4 = latstrapshome4s(:one)
  end

  test "visiting the index" do
    visit latstrapshome4s_url
    assert_selector "h1", text: "Latstrapshome4s"
  end

  test "creating a Latstrapshome4" do
    visit latstrapshome4s_url
    click_on "New Latstrapshome4"

    fill_in "Exercise", with: @latstrapshome4.exercise
    fill_in "Reps", with: @latstrapshome4.reps
    fill_in "Sets", with: @latstrapshome4.sets
    click_on "Create Latstrapshome4"

    assert_text "Latstrapshome4 was successfully created"
    click_on "Back"
  end

  test "updating a Latstrapshome4" do
    visit latstrapshome4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstrapshome4.exercise
    fill_in "Reps", with: @latstrapshome4.reps
    fill_in "Sets", with: @latstrapshome4.sets
    click_on "Update Latstrapshome4"

    assert_text "Latstrapshome4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstrapshome4" do
    visit latstrapshome4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstrapshome4 was successfully destroyed"
  end
end
