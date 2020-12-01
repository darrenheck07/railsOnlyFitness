require "application_system_test_case"

class Bicepstricepshome3sTest < ApplicationSystemTestCase
  setup do
    @bicepstricepshome3 = bicepstricepshome3s(:one)
  end

  test "visiting the index" do
    visit bicepstricepshome3s_url
    assert_selector "h1", text: "Bicepstricepshome3s"
  end

  test "creating a Bicepstricepshome3" do
    visit bicepstricepshome3s_url
    click_on "New Bicepstricepshome3"

    fill_in "Exercise", with: @bicepstricepshome3.exercise
    fill_in "Reps", with: @bicepstricepshome3.reps
    fill_in "Sets", with: @bicepstricepshome3.sets
    click_on "Create Bicepstricepshome3"

    assert_text "Bicepstricepshome3 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstricepshome3" do
    visit bicepstricepshome3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstricepshome3.exercise
    fill_in "Reps", with: @bicepstricepshome3.reps
    fill_in "Sets", with: @bicepstricepshome3.sets
    click_on "Update Bicepstricepshome3"

    assert_text "Bicepstricepshome3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstricepshome3" do
    visit bicepstricepshome3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstricepshome3 was successfully destroyed"
  end
end
