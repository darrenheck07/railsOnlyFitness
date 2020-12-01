require "application_system_test_case"

class Bicepstriceps3sTest < ApplicationSystemTestCase
  setup do
    @bicepstriceps3 = bicepstriceps3s(:one)
  end

  test "visiting the index" do
    visit bicepstriceps3s_url
    assert_selector "h1", text: "Bicepstriceps3s"
  end

  test "creating a Bicepstriceps3" do
    visit bicepstriceps3s_url
    click_on "New Bicepstriceps3"

    fill_in "Exercise", with: @bicepstriceps3.exercise
    fill_in "Reps", with: @bicepstriceps3.reps
    fill_in "Sets", with: @bicepstriceps3.sets
    click_on "Create Bicepstriceps3"

    assert_text "Bicepstriceps3 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstriceps3" do
    visit bicepstriceps3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstriceps3.exercise
    fill_in "Reps", with: @bicepstriceps3.reps
    fill_in "Sets", with: @bicepstriceps3.sets
    click_on "Update Bicepstriceps3"

    assert_text "Bicepstriceps3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstriceps3" do
    visit bicepstriceps3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstriceps3 was successfully destroyed"
  end
end
