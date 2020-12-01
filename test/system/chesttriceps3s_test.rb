require "application_system_test_case"

class Chesttriceps3sTest < ApplicationSystemTestCase
  setup do
    @chesttriceps3 = chesttriceps3s(:one)
  end

  test "visiting the index" do
    visit chesttriceps3s_url
    assert_selector "h1", text: "Chesttriceps3s"
  end

  test "creating a Chesttriceps3" do
    visit chesttriceps3s_url
    click_on "New Chesttriceps3"

    fill_in "Exercise", with: @chesttriceps3.exercise
    fill_in "Reps", with: @chesttriceps3.reps
    fill_in "Sets", with: @chesttriceps3.sets
    click_on "Create Chesttriceps3"

    assert_text "Chesttriceps3 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttriceps3" do
    visit chesttriceps3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttriceps3.exercise
    fill_in "Reps", with: @chesttriceps3.reps
    fill_in "Sets", with: @chesttriceps3.sets
    click_on "Update Chesttriceps3"

    assert_text "Chesttriceps3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttriceps3" do
    visit chesttriceps3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttriceps3 was successfully destroyed"
  end
end
