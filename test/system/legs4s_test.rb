require "application_system_test_case"

class Legs4sTest < ApplicationSystemTestCase
  setup do
    @legs4 = legs4s(:one)
  end

  test "visiting the index" do
    visit legs4s_url
    assert_selector "h1", text: "Legs4s"
  end

  test "creating a Legs4" do
    visit legs4s_url
    click_on "New Legs4"

    fill_in "Exercise", with: @legs4.exercise
    fill_in "Reps", with: @legs4.reps
    fill_in "Sets", with: @legs4.sets
    click_on "Create Legs4"

    assert_text "Legs4 was successfully created"
    click_on "Back"
  end

  test "updating a Legs4" do
    visit legs4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @legs4.exercise
    fill_in "Reps", with: @legs4.reps
    fill_in "Sets", with: @legs4.sets
    click_on "Update Legs4"

    assert_text "Legs4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Legs4" do
    visit legs4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Legs4 was successfully destroyed"
  end
end
