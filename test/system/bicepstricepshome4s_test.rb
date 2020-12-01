require "application_system_test_case"

class Bicepstricepshome4sTest < ApplicationSystemTestCase
  setup do
    @bicepstricepshome4 = bicepstricepshome4s(:one)
  end

  test "visiting the index" do
    visit bicepstricepshome4s_url
    assert_selector "h1", text: "Bicepstricepshome4s"
  end

  test "creating a Bicepstricepshome4" do
    visit bicepstricepshome4s_url
    click_on "New Bicepstricepshome4"

    fill_in "Exercise", with: @bicepstricepshome4.exercise
    fill_in "Reps", with: @bicepstricepshome4.reps
    fill_in "Sets", with: @bicepstricepshome4.sets
    click_on "Create Bicepstricepshome4"

    assert_text "Bicepstricepshome4 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstricepshome4" do
    visit bicepstricepshome4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstricepshome4.exercise
    fill_in "Reps", with: @bicepstricepshome4.reps
    fill_in "Sets", with: @bicepstricepshome4.sets
    click_on "Update Bicepstricepshome4"

    assert_text "Bicepstricepshome4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstricepshome4" do
    visit bicepstricepshome4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstricepshome4 was successfully destroyed"
  end
end
