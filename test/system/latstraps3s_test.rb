require "application_system_test_case"

class Latstraps3sTest < ApplicationSystemTestCase
  setup do
    @latstraps3 = latstraps3s(:one)
  end

  test "visiting the index" do
    visit latstraps3s_url
    assert_selector "h1", text: "Latstraps3s"
  end

  test "creating a Latstraps3" do
    visit latstraps3s_url
    click_on "New Latstraps3"

    fill_in "Exercise", with: @latstraps3.exercise
    fill_in "Reps", with: @latstraps3.reps
    fill_in "Sets", with: @latstraps3.sets
    click_on "Create Latstraps3"

    assert_text "Latstraps3 was successfully created"
    click_on "Back"
  end

  test "updating a Latstraps3" do
    visit latstraps3s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstraps3.exercise
    fill_in "Reps", with: @latstraps3.reps
    fill_in "Sets", with: @latstraps3.sets
    click_on "Update Latstraps3"

    assert_text "Latstraps3 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstraps3" do
    visit latstraps3s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstraps3 was successfully destroyed"
  end
end
