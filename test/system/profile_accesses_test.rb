require "application_system_test_case"

class ProfileAccessesTest < ApplicationSystemTestCase
  setup do
    @profile_access = profile_accesses(:one)
  end

  test "visiting the index" do
    visit profile_accesses_url
    assert_selector "h1", text: "Profile Accesses"
  end

  test "creating a Profile access" do
    visit profile_accesses_url
    click_on "New Profile Access"

    fill_in "Access kind", with: @profile_access.access_kind_id
    fill_in "Object access", with: @profile_access.object_access
    fill_in "User profile", with: @profile_access.user_profile_id
    click_on "Create Profile access"

    assert_text "Profile access was successfully created"
    click_on "Back"
  end

  test "updating a Profile access" do
    visit profile_accesses_url
    click_on "Edit", match: :first

    fill_in "Access kind", with: @profile_access.access_kind_id
    fill_in "Object access", with: @profile_access.object_access
    fill_in "User profile", with: @profile_access.user_profile_id
    click_on "Update Profile access"

    assert_text "Profile access was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile access" do
    visit profile_accesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile access was successfully destroyed"
  end
end
