require "application_system_test_case"

class Bicepstriceps4sTest < ApplicationSystemTestCase
  setup do
    @bicepstriceps4 = bicepstriceps4s(:one)
  end

  test "visiting the index" do
    visit bicepstriceps4s_url
    assert_selector "h1", text: "Bicepstriceps4s"
  end

  test "creating a Bicepstriceps4" do
    visit bicepstriceps4s_url
    click_on "New Bicepstriceps4"

    fill_in "Exercise", with: @bicepstriceps4.exercise
    fill_in "Reps", with: @bicepstriceps4.reps
    fill_in "Sets", with: @bicepstriceps4.sets
    click_on "Create Bicepstriceps4"

    assert_text "Bicepstriceps4 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstriceps4" do
    visit bicepstriceps4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstriceps4.exercise
    fill_in "Reps", with: @bicepstriceps4.reps
    fill_in "Sets", with: @bicepstriceps4.sets
    click_on "Update Bicepstriceps4"

    assert_text "Bicepstriceps4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstriceps4" do
    visit bicepstriceps4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstriceps4 was successfully destroyed"
  end
end
