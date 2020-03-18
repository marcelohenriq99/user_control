require "application_system_test_case"

class DeliveriesTest < ApplicationSystemTestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "visiting the index" do
    visit deliveries_url
    assert_selector "h1", text: "Deliveries"
  end

  test "creating a Delivery" do
    visit deliveries_url
    click_on "New Delivery"

    fill_in "Client", with: @delivery.client_id
    fill_in "Description", with: @delivery.description
    fill_in "Priority", with: @delivery.priority
    fill_in "Product", with: @delivery.product_id
    fill_in "Status", with: @delivery.status
    fill_in "Total", with: @delivery.total
    fill_in "User", with: @delivery.user_id
    click_on "Create Delivery"

    assert_text "Delivery was successfully created"
    click_on "Back"
  end

  test "updating a Delivery" do
    visit deliveries_url
    click_on "Edit", match: :first

    fill_in "Client", with: @delivery.client_id
    fill_in "Description", with: @delivery.description
    fill_in "Priority", with: @delivery.priority
    fill_in "Product", with: @delivery.product_id
    fill_in "Status", with: @delivery.status
    fill_in "Total", with: @delivery.total
    fill_in "User", with: @delivery.user_id
    click_on "Update Delivery"

    assert_text "Delivery was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivery" do
    visit deliveries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivery was successfully destroyed"
  end
end
