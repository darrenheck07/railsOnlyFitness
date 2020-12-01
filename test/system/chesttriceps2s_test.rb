require "application_system_test_case"

class Chesttriceps2sTest < ApplicationSystemTestCase
  setup do
    @chesttriceps2 = chesttriceps2s(:one)
  end

  test "visiting the index" do
    visit chesttriceps2s_url
    assert_selector "h1", text: "Chesttriceps2s"
  end

  test "creating a Chesttriceps2" do
    visit chesttriceps2s_url
    click_on "New Chesttriceps2"

    fill_in "Exercise", with: @chesttriceps2.exercise
    fill_in "Reps", with: @chesttriceps2.reps
    fill_in "Sets", with: @chesttriceps2.sets
    click_on "Create Chesttriceps2"

    assert_text "Chesttriceps2 was successfully created"
    click_on "Back"
  end

  test "updating a Chesttriceps2" do
    visit chesttriceps2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @chesttriceps2.exercise
    fill_in "Reps", with: @chesttriceps2.reps
    fill_in "Sets", with: @chesttriceps2.sets
    click_on "Update Chesttriceps2"

    assert_text "Chesttriceps2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Chesttriceps2" do
    visit chesttriceps2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chesttriceps2 was successfully destroyed"
  end
end
