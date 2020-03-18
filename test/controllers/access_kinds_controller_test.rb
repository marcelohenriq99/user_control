require 'test_helper'

class AccessKindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @access_kind = access_kinds(:one)
  end

  test "should get index" do
    get access_kinds_url
    assert_response :success
  end

  test "should get new" do
    get new_access_kind_url
    assert_response :success
  end

  test "should create access_kind" do
    assert_difference('AccessKind.count') do
      post access_kinds_url, params: { access_kind: { description: @access_kind.description } }
    end

    assert_redirected_to access_kind_url(AccessKind.last)
  end

  test "should show access_kind" do
    get access_kind_url(@access_kind)
    assert_response :success
  end

  test "should get edit" do
    get edit_access_kind_url(@access_kind)
    assert_response :success
  end

  test "should update access_kind" do
    patch access_kind_url(@access_kind), params: { access_kind: { description: @access_kind.description } }
    assert_redirected_to access_kind_url(@access_kind)
  end

  test "should destroy access_kind" do
    assert_difference('AccessKind.count', -1) do
      delete access_kind_url(@access_kind)
    end

    assert_redirected_to access_kinds_url
  end
end
