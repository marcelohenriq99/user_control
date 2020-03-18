require 'test_helper'

class ProfileAccessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_access = profile_accesses(:one)
  end

  test "should get index" do
    get profile_accesses_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_access_url
    assert_response :success
  end

  test "should create profile_access" do
    assert_difference('ProfileAccess.count') do
      post profile_accesses_url, params: { profile_access: { access_kind_id: @profile_access.access_kind_id, object_access: @profile_access.object_access, user_profile_id: @profile_access.user_profile_id } }
    end

    assert_redirected_to profile_access_url(ProfileAccess.last)
  end

  test "should show profile_access" do
    get profile_access_url(@profile_access)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_access_url(@profile_access)
    assert_response :success
  end

  test "should update profile_access" do
    patch profile_access_url(@profile_access), params: { profile_access: { access_kind_id: @profile_access.access_kind_id, object_access: @profile_access.object_access, user_profile_id: @profile_access.user_profile_id } }
    assert_redirected_to profile_access_url(@profile_access)
  end

  test "should destroy profile_access" do
    assert_difference('ProfileAccess.count', -1) do
      delete profile_access_url(@profile_access)
    end

    assert_redirected_to profile_accesses_url
  end
end
