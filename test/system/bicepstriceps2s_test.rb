require "application_system_test_case"

class Bicepstriceps2sTest < ApplicationSystemTestCase
  setup do
    @bicepstriceps2 = bicepstriceps2s(:one)
  end

  test "visiting the index" do
    visit bicepstriceps2s_url
    assert_selector "h1", text: "Bicepstriceps2s"
  end

  test "creating a Bicepstriceps2" do
    visit bicepstriceps2s_url
    click_on "New Bicepstriceps2"

    fill_in "Exercise", with: @bicepstriceps2.exercise
    fill_in "Reps", with: @bicepstriceps2.reps
    fill_in "Sets", with: @bicepstriceps2.sets
    click_on "Create Bicepstriceps2"

    assert_text "Bicepstriceps2 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstriceps2" do
    visit bicepstriceps2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstriceps2.exercise
    fill_in "Reps", with: @bicepstriceps2.reps
    fill_in "Sets", with: @bicepstriceps2.sets
    click_on "Update Bicepstriceps2"

    assert_text "Bicepstriceps2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstriceps2" do
    visit bicepstriceps2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstriceps2 was successfully destroyed"
  end
end
