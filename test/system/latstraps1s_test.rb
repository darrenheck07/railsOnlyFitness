require "application_system_test_case"

class Latstraps1sTest < ApplicationSystemTestCase
  setup do
    @latstraps1 = latstraps1s(:one)
  end

  test "visiting the index" do
    visit latstraps1s_url
    assert_selector "h1", text: "Latstraps1s"
  end

  test "creating a Latstraps1" do
    visit latstraps1s_url
    click_on "New Latstraps1"

    fill_in "Exercise", with: @latstraps1.exercise
    fill_in "Reps", with: @latstraps1.reps
    fill_in "Sets", with: @latstraps1.sets
    click_on "Create Latstraps1"

    assert_text "Latstraps1 was successfully created"
    click_on "Back"
  end

  test "updating a Latstraps1" do
    visit latstraps1s_url
    click_on "Edit", match: :first

    fill_in "Exercise", with: @latstraps1.exercise
    fill_in "Reps", with: @latstraps1.reps
    fill_in "Sets", with: @latstraps1.sets
    click_on "Update Latstraps1"

    assert_text "Latstraps1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Latstraps1" do
    visit latstraps1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Latstraps1 was successfully destroyed"
  end
end
