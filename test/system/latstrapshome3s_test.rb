require "application_system_test_case"

class Latstrapshome3sTest < ApplicationSystemTestCase
  setup do
    @latstrapshome3 = latstrapshome3s(:one)
  end

  test "visiting the index" do
    visit latstrapshome3s_url
    assert_selector "h1", text: "Latstrapshome3s"
  end

  test "creating a Latstrapshome3" do
    visit latstrapshome3s_url
    click_on "New Latstrapshome3"

    fill_in "Exercise", with: @latstrapshome3.exercise
    fill_in "Reps", with: @latstrapshome3.reps
    fill_in "Sets", with: @latstrapshome3.sets
    click_on "Create Latstrapshome3"

    assert_text "Latstrapshome3 was successfully created"
    click_on "Back"
  end

  test "updating a Latstrapshome3" do
    visit latstrapshome3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstrapshome3.exercise
    fill_in "Reps", with: @latstrapshome3.reps
    fill_in "Sets", with: @latstrapshome3.sets
    click_on "Update Latstrapshome3"

    assert_text "Latstrapshome3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstrapshome3" do
    visit latstrapshome3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstrapshome3 was successfully destroyed"
  end
end
