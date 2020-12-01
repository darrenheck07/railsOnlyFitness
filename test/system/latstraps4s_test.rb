require "application_system_test_case"

class Latstraps4sTest < ApplicationSystemTestCase
  setup do
    @latstraps4 = latstraps4s(:one)
  end

  test "visiting the index" do
    visit latstraps4s_url
    assert_selector "h1", text: "Latstraps4s"
  end

  test "creating a Latstraps4" do
    visit latstraps4s_url
    click_on "New Latstraps4"

    fill_in "Exercise", with: @latstraps4.exercise
    fill_in "Reps", with: @latstraps4.reps
    fill_in "Sets", with: @latstraps4.sets
    click_on "Create Latstraps4"

    assert_text "Latstraps4 was successfully created"
    click_on "Back"
  end

  test "updating a Latstraps4" do
    visit latstraps4s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstraps4.exercise
    fill_in "Reps", with: @latstraps4.reps
    fill_in "Sets", with: @latstraps4.sets
    click_on "Update Latstraps4"

    assert_text "Latstraps4 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstraps4" do
    visit latstraps4s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstraps4 was successfully destroyed"
  end
end
