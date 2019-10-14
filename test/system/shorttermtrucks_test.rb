require "application_system_test_case"

class ShorttermtrucksTest < ApplicationSystemTestCase
  setup do
    @shorttermtruck = shorttermtrucks(:one)
  end

  test "visiting the index" do
    visit shorttermtrucks_url
    assert_selector "h1", text: "Shorttermtrucks"
  end

  test "creating a Shorttermtruck" do
    visit shorttermtrucks_url
    click_on "New Shorttermtruck"

    fill_in "Employee", with: @shorttermtruck.employee
    fill_in "Ezpass", with: @shorttermtruck.ezpass
    fill_in "Given", with: @shorttermtruck.given
    fill_in "Returned", with: @shorttermtruck.returned
    fill_in "Truck", with: @shorttermtruck.truck
    fill_in "User", with: @shorttermtruck.user_id
    fill_in "Wexcard", with: @shorttermtruck.wexcard
    click_on "Create Shorttermtruck"

    assert_text "Shorttermtruck was successfully created"
    click_on "Back"
  end

  test "updating a Shorttermtruck" do
    visit shorttermtrucks_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @shorttermtruck.employee
    fill_in "Ezpass", with: @shorttermtruck.ezpass
    fill_in "Given", with: @shorttermtruck.given
    fill_in "Returned", with: @shorttermtruck.returned
    fill_in "Truck", with: @shorttermtruck.truck
    fill_in "User", with: @shorttermtruck.user_id
    fill_in "Wexcard", with: @shorttermtruck.wexcard
    click_on "Update Shorttermtruck"

    assert_text "Shorttermtruck was successfully updated"
    click_on "Back"
  end

  test "destroying a Shorttermtruck" do
    visit shorttermtrucks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shorttermtruck was successfully destroyed"
  end
end
