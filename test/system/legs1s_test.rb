require "application_system_test_case"

class Legs1sTest < ApplicationSystemTestCase
  setup do
    @legs1 = legs1s(:one)
  end

  test "visiting the index" do
    visit legs1s_url
    assert_selector "h1", text: "Legs1s"
  end

  test "creating a Legs1" do
    visit legs1s_url
    click_on "New Legs1"

    fill_in "Exercise", with: @legs1.exercise
    fill_in "Reps", with: @legs1.reps
    fill_in "Sets", with: @legs1.sets
    click_on "Create Legs1"

    assert_text "Legs1 was successfully created"
    click_on "Back"
  end

  test "updating a Legs1" do
    visit legs1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legs1.exercise
    fill_in "Reps", with: @legs1.reps
    fill_in "Sets", with: @legs1.sets
    click_on "Update Legs1"

    assert_text "Legs1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legs1" do
    visit legs1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legs1 was successfully destroyed"
  end
end
