require "application_system_test_case"

class AccessKindsTest < ApplicationSystemTestCase
  setup do
    @access_kind = access_kinds(:one)
  end

  test "visiting the index" do
    visit access_kinds_url
    assert_selector "h1", text: "Access Kinds"
  end

  test "creating a Access kind" do
    visit access_kinds_url
    click_on "New Access Kind"

    fill_in "Description", with: @access_kind.description
    click_on "Create Access kind"

    assert_text "Access kind was successfully created"
    click_on "Back"
  end

  test "updating a Access kind" do
    visit access_kinds_url
    click_on "Edit", match: :first

    fill_in "Description", with: @access_kind.description
    click_on "Update Access kind"

    assert_text "Access kind was successfully updated"
    click_on "Back"
  end

  test "destroying a Access kind" do
    visit access_kinds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Access kind was successfully destroyed"
  end
end
