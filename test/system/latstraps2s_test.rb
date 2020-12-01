require "application_system_test_case"

class Latstraps2sTest < ApplicationSystemTestCase
  setup do
    @latstraps2 = latstraps2s(:one)
  end

  test "visiting the index" do
    visit latstraps2s_url
    assert_selector "h1", text: "Latstraps2s"
  end

  test "creating a Latstraps2" do
    visit latstraps2s_url
    click_on "New Latstraps2"

    fill_in "Exercise", with: @latstraps2.exercise
    fill_in "Reps", with: @latstraps2.reps
    fill_in "Sets", with: @latstraps2.sets
    click_on "Create Latstraps2"

    assert_text "Latstraps2 was successfully created"
    click_on "Back"
  end

  test "updating a Latstraps2" do
    visit latstraps2s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstraps2.exercise
    fill_in "Reps", with: @latstraps2.reps
    fill_in "Sets", with: @latstraps2.sets
    click_on "Update Latstraps2"

    assert_text "Latstraps2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstraps2" do
    visit latstraps2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstraps2 was successfully destroyed"
  end
end
