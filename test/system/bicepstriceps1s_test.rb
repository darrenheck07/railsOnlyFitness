require "application_system_test_case"

class Bicepstriceps1sTest < ApplicationSystemTestCase
  setup do
    @bicepstriceps1 = bicepstriceps1s(:one)
  end

  test "visiting the index" do
    visit bicepstriceps1s_url
    assert_selector "h1", text: "Bicepstriceps1s"
  end

  test "creating a Bicepstriceps1" do
    visit bicepstriceps1s_url
    click_on "New Bicepstriceps1"

    fill_in "Exercise", with: @bicepstriceps1.exercise
    fill_in "Reps", with: @bicepstriceps1.reps
    fill_in "Sets", with: @bicepstriceps1.sets
    click_on "Create Bicepstriceps1"

    assert_text "Bicepstriceps1 was successfully created"
    click_on "Back"
  end

  test "updating a Bicepstriceps1" do
    visit bicepstriceps1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @bicepstriceps1.exercise
    fill_in "Reps", with: @bicepstriceps1.reps
    fill_in "Sets", with: @bicepstriceps1.sets
    click_on "Update Bicepstriceps1"

    assert_text "Bicepstriceps1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Bicepstriceps1" do
    visit bicepstriceps1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bicepstriceps1 was successfully destroyed"
  end
end
