require "application_system_test_case"

class ChestTriceps1sTest < ApplicationSystemTestCase
  setup do
    @chest_triceps1 = chest_triceps1s(:one)
  end

  test "visiting the index" do
    visit chest_triceps1s_url
    assert_selector "h1", text: "Chest Triceps1s"
  end

  test "creating a Chest triceps1" do
    visit chest_triceps1s_url
    click_on "New Chest Triceps1"

    fill_in "Exercise", with: @chest_triceps1.exercise
    fill_in "Reps", with: @chest_triceps1.reps
    fill_in "Sets", with: @chest_triceps1.sets
    click_on "Create Chest triceps1"

    assert_text "Chest triceps1 was successfully created"
    click_on "Back"
  end

  test "updating a Chest triceps1" do
    visit chest_triceps1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chest_triceps1.exercise
    fill_in "Reps", with: @chest_triceps1.reps
    fill_in "Sets", with: @chest_triceps1.sets
    click_on "Update Chest triceps1"

    assert_text "Chest triceps1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chest triceps1" do
    visit chest_triceps1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chest triceps1 was successfully destroyed"
  end
end
