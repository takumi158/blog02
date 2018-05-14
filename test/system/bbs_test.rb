require "application_system_test_case"

class BbsTest < ApplicationSystemTestCase
  setup do
    @bb = bbs(:one)
  end

  test "visiting the index" do
    visit bbs_url
    assert_selector "h1", text: "Bbs"
  end

  test "creating a Bb" do
    visit bbs_url
    click_on "New Bb"

    fill_in "Body", with: @bb.body
    fill_in "Date", with: @bb.date
    fill_in "Title", with: @bb.title
    click_on "Create Bb"

    assert_text "Bb was successfully created"
    click_on "Back"
  end

  test "updating a Bb" do
    visit bbs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @bb.body
    fill_in "Date", with: @bb.date
    fill_in "Title", with: @bb.title
    click_on "Update Bb"

    assert_text "Bb was successfully updated"
    click_on "Back"
  end

  test "destroying a Bb" do
    visit bbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bb was successfully destroyed"
  end
end
