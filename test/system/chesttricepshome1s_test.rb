require "application_system_test_case"

class Chesttricepshome1sTest < ApplicationSystemTestCase
  setup do
    @chesttricepshome1 = chesttricepshome1s(:one)
  end

  test "visiting the index" do
    visit chesttricepshome1s_url
    assert_selector "h1", text: "Chesttricepshome1s"
  end

  test "creating a Chesttricepshome1" do
    visit chesttricepshome1s_url
    click_on "New Chesttricepshome1"

    fill_in "Exercise", with: @chesttricepshome1.exercise
    fill_in "Reps", with: @chesttricepshome1.reps
    fill_in "Sets", with: @chesttricepshome1.sets
    click_on "Create Chesttricepshome1"

    assert_text "Chesttricepshome1 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttricepshome1" do
    visit chesttricepshome1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttricepshome1.exercise
    fill_in "Reps", with: @chesttricepshome1.reps
    fill_in "Sets", with: @chesttricepshome1.sets
    click_on "Update Chesttricepshome1"

    assert_text "Chesttricepshome1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttricepshome1" do
    visit chesttricepshome1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttricepshome1 was successfully destroyed"
  end
end
