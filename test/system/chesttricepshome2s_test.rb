require "application_system_test_case"

class Chesttricepshome2sTest < ApplicationSystemTestCase
  setup do
    @chesttricepshome2 = chesttricepshome2s(:one)
  end

  test "visiting the index" do
    visit chesttricepshome2s_url
    assert_selector "h1", text: "Chesttricepshome2s"
  end

  test "creating a Chesttricepshome2" do
    visit chesttricepshome2s_url
    click_on "New Chesttricepshome2"

    fill_in "Exercise", with: @chesttricepshome2.exercise
    fill_in "Reps", with: @chesttricepshome2.reps
    fill_in "Sets", with: @chesttricepshome2.sets
    click_on "Create Chesttricepshome2"

    assert_text "Chesttricepshome2 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttricepshome2" do
    visit chesttricepshome2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttricepshome2.exercise
    fill_in "Reps", with: @chesttricepshome2.reps
    fill_in "Sets", with: @chesttricepshome2.sets
    click_on "Update Chesttricepshome2"

    assert_text "Chesttricepshome2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttricepshome2" do
    visit chesttricepshome2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttricepshome2 was successfully destroyed"
  end
end
