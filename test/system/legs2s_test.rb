require "application_system_test_case"

class Legs2sTest < ApplicationSystemTestCase
  setup do
    @legs2 = legs2s(:one)
  end

  test "visiting the index" do
    visit legs2s_url
    assert_selector "h1", text: "Legs2s"
  end

  test "creating a Legs2" do
    visit legs2s_url
    click_on "New Legs2"

    fill_in "Exercise", with: @legs2.exercise
    fill_in "Reps", with: @legs2.reps
    fill_in "Sets", with: @legs2.sets
    click_on "Create Legs2"

    assert_text "Legs2 was successfully created"
    click_on "Back"
  end

  test "updating a Legs2" do
    visit legs2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legs2.exercise
    fill_in "Reps", with: @legs2.reps
    fill_in "Sets", with: @legs2.sets
    click_on "Update Legs2"

    assert_text "Legs2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legs2" do
    visit legs2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legs2 was successfully destroyed"
  end
end
