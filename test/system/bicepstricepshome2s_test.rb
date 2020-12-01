require "application_system_test_case"

class Bicepstricepshome2sTest < ApplicationSystemTestCase
  setup do
    @bicepstricepshome2 = bicepstricepshome2s(:one)
  end

  test "visiting the index" do
    visit bicepstricepshome2s_url
    assert_selector "h1", text: "Bicepstricepshome2s"
  end

  test "creating a Bicepstricepshome2" do
    visit bicepstricepshome2s_url
    click_on "New Bicepstricepshome2"

    fill_in "Exercise", with: @bicepstricepshome2.exercise
    fill_in "Reps", with: @bicepstricepshome2.reps
    fill_in "Sets", with: @bicepstricepshome2.sets
    click_on "Create Bicepstricepshome2"

    assert_text "Bicepstricepshome2 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstricepshome2" do
    visit bicepstricepshome2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstricepshome2.exercise
    fill_in "Reps", with: @bicepstricepshome2.reps
    fill_in "Sets", with: @bicepstricepshome2.sets
    click_on "Update Bicepstricepshome2"

    assert_text "Bicepstricepshome2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstricepshome2" do
    visit bicepstricepshome2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstricepshome2 was successfully destroyed"
  end
end
