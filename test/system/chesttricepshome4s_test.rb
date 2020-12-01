require "application_system_test_case"

class Chesttricepshome4sTest < ApplicationSystemTestCase
  setup do
    @chesttricepshome4 = chesttricepshome4s(:one)
  end

  test "visiting the index" do
    visit chesttricepshome4s_url
    assert_selector "h1", text: "Chesttricepshome4s"
  end

  test "creating a Chesttricepshome4" do
    visit chesttricepshome4s_url
    click_on "New Chesttricepshome4"

    fill_in "Exercise", with: @chesttricepshome4.exercise
    fill_in "Reps", with: @chesttricepshome4.reps
    fill_in "Sets", with: @chesttricepshome4.sets
    click_on "Create Chesttricepshome4"

    assert_text "Chesttricepshome4 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttricepshome4" do
    visit chesttricepshome4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttricepshome4.exercise
    fill_in "Reps", with: @chesttricepshome4.reps
    fill_in "Sets", with: @chesttricepshome4.sets
    click_on "Update Chesttricepshome4"

    assert_text "Chesttricepshome4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttricepshome4" do
    visit chesttricepshome4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttricepshome4 was successfully destroyed"
  end
end
