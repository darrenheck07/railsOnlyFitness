require "application_system_test_case"

class Chesttricepshome3sTest < ApplicationSystemTestCase
  setup do
    @chesttricepshome3 = chesttricepshome3s(:one)
  end

  test "visiting the index" do
    visit chesttricepshome3s_url
    assert_selector "h1", text: "Chesttricepshome3s"
  end

  test "creating a Chesttricepshome3" do
    visit chesttricepshome3s_url
    click_on "New Chesttricepshome3"

    fill_in "Exercise", with: @chesttricepshome3.exercise
    fill_in "Reps", with: @chesttricepshome3.reps
    fill_in "Sets", with: @chesttricepshome3.sets
    click_on "Create Chesttricepshome3"

    assert_text "Chesttricepshome3 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttricepshome3" do
    visit chesttricepshome3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttricepshome3.exercise
    fill_in "Reps", with: @chesttricepshome3.reps
    fill_in "Sets", with: @chesttricepshome3.sets
    click_on "Update Chesttricepshome3"

    assert_text "Chesttricepshome3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttricepshome3" do
    visit chesttricepshome3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttricepshome3 was successfully destroyed"
  end
end
