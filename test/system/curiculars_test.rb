require "application_system_test_case"

class CuricularsTest < ApplicationSystemTestCase
  setup do
    @curicular = curiculars(:one)
  end

  test "visiting the index" do
    visit curiculars_url
    assert_selector "h1", text: "Curiculars"
  end

  test "creating a Curicular" do
    visit curiculars_url
    click_on "New Curicular"

    fill_in "Activity", with: @curicular.activity
    fill_in "Year", with: @curicular.year
    click_on "Create Curicular"

    assert_text "Curicular was successfully created"
    click_on "Back"
  end

  test "updating a Curicular" do
    visit curiculars_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @curicular.activity
    fill_in "Year", with: @curicular.year
    click_on "Update Curicular"

    assert_text "Curicular was successfully updated"
    click_on "Back"
  end

  test "destroying a Curicular" do
    visit curiculars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curicular was successfully destroyed"
  end
end
