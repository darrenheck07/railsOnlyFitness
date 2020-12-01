require "application_system_test_case"

class Bicepstricepshome1sTest < ApplicationSystemTestCase
  setup do
    @bicepstricepshome1 = bicepstricepshome1s(:one)
  end

  test "visiting the index" do
    visit bicepstricepshome1s_url
    assert_selector "h1", text: "Bicepstricepshome1s"
  end

  test "creating a Bicepstricepshome1" do
    visit bicepstricepshome1s_url
    click_on "New Bicepstricepshome1"

    fill_in "Exercise", with: @bicepstricepshome1.exercise
    fill_in "Reps", with: @bicepstricepshome1.reps
    fill_in "Sets", with: @bicepstricepshome1.sets
    click_on "Create Bicepstricepshome1"

    assert_text "Bicepstricepshome1 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstricepshome1" do
    visit bicepstricepshome1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstricepshome1.exercise
    fill_in "Reps", with: @bicepstricepshome1.reps
    fill_in "Sets", with: @bicepstricepshome1.sets
    click_on "Update Bicepstricepshome1"

    assert_text "Bicepstricepshome1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstricepshome1" do
    visit bicepstricepshome1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstricepshome1 was successfully destroyed"
  end
end
