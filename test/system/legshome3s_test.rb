require "application_system_test_case"

class Legshome3sTest < ApplicationSystemTestCase
  setup do
    @legshome3 = legshome3s(:one)
  end

  test "visiting the index" do
    visit legshome3s_url
    assert_selector "h1", text: "Legshome3s"
  end

  test "creating a Legshome3" do
    visit legshome3s_url
    click_on "New Legshome3"

    fill_in "Exercise", with: @legshome3.exercise
    fill_in "Reps", with: @legshome3.reps
    fill_in "Sets", with: @legshome3.sets
    click_on "Create Legshome3"

    assert_text "Legshome3 was successfully created"
    click_on "Back"
  end

  test "updating a Legshome3" do
    visit legshome3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legshome3.exercise
    fill_in "Reps", with: @legshome3.reps
    fill_in "Sets", with: @legshome3.sets
    click_on "Update Legshome3"

    assert_text "Legshome3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legshome3" do
    visit legshome3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legshome3 was successfully destroyed"
  end
end
