require "application_system_test_case"

class Chesttriceps4sTest < ApplicationSystemTestCase
  setup do
    @chesttriceps4 = chesttriceps4s(:one)
  end

  test "visiting the index" do
    visit chesttriceps4s_url
    assert_selector "h1", text: "Chesttriceps4s"
  end

  test "creating a Chesttriceps4" do
    visit chesttriceps4s_url
    click_on "New Chesttriceps4"

    fill_in "Exercise", with: @chesttriceps4.exercise
    fill_in "Reps", with: @chesttriceps4.reps
    fill_in "Sets", with: @chesttriceps4.sets
    click_on "Create Chesttriceps4"

    assert_text "Chesttriceps4 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttriceps4" do
    visit chesttriceps4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttriceps4.exercise
    fill_in "Reps", with: @chesttriceps4.reps
    fill_in "Sets", with: @chesttriceps4.sets
    click_on "Update Chesttriceps4"

    assert_text "Chesttriceps4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttriceps4" do
    visit chesttriceps4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttriceps4 was successfully destroyed"
  end
end
