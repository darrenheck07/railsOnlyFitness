require "application_system_test_case"

class Latstrapshome2sTest < ApplicationSystemTestCase
  setup do
    @latstrapshome2 = latstrapshome2s(:one)
  end

  test "visiting the index" do
    visit latstrapshome2s_url
    assert_selector "h1", text: "Latstrapshome2s"
  end

  test "creating a Latstrapshome2" do
    visit latstrapshome2s_url
    click_on "New Latstrapshome2"

    fill_in "Exercise", with: @latstrapshome2.exercise
    fill_in "Reps", with: @latstrapshome2.reps
    fill_in "Sets", with: @latstrapshome2.sets
    click_on "Create Latstrapshome2"

    assert_text "Latstrapshome2 was successfully created"
    click_on "Back"
  end

  test "updating a Latstrapshome2" do
    visit latstrapshome2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstrapshome2.exercise
    fill_in "Reps", with: @latstrapshome2.reps
    fill_in "Sets", with: @latstrapshome2.sets
    click_on "Update Latstrapshome2"

    assert_text "Latstrapshome2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstrapshome2" do
    visit latstrapshome2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstrapshome2 was successfully destroyed"
  end
end
