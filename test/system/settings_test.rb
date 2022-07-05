require "application_system_test_case"

class SettingsTest < ApplicationSystemTestCase
  setup do
    @setting = settings(:one)
  end

  test "visiting the index" do
    visit settings_url
    assert_selector "h1", text: "Settings"
  end

  test "creating a Setting" do
    visit settings_url
    click_on "New Setting"

    fill_in "Address", with: @setting.address
    check "Business trip" if @setting.business_trip
    fill_in "Cast", with: @setting.cast
    fill_in "Cast ja", with: @setting.cast_ja
    fill_in "Closing", with: @setting.closing
    fill_in "Customer tel", with: @setting.customer_tel
    fill_in "Holiday", with: @setting.holiday
    fill_in "Login", with: @setting.login_id
    fill_in "Login pass", with: @setting.login_pass
    fill_in "Mail", with: @setting.mail
    fill_in "Nearest", with: @setting.nearest
    fill_in "Opening", with: @setting.opening
    fill_in "Recruiting tel", with: @setting.recruiting_tel
    fill_in "Reserve", with: @setting.reserve
    click_on "Create Setting"

    assert_text "Setting was successfully created"
    click_on "Back"
  end

  test "updating a Setting" do
    visit settings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @setting.address
    check "Business trip" if @setting.business_trip
    fill_in "Cast", with: @setting.cast
    fill_in "Cast ja", with: @setting.cast_ja
    fill_in "Closing", with: @setting.closing
    fill_in "Customer tel", with: @setting.customer_tel
    fill_in "Holiday", with: @setting.holiday
    fill_in "Login", with: @setting.login_id
    fill_in "Login pass", with: @setting.login_pass
    fill_in "Mail", with: @setting.mail
    fill_in "Nearest", with: @setting.nearest
    fill_in "Opening", with: @setting.opening
    fill_in "Recruiting tel", with: @setting.recruiting_tel
    fill_in "Reserve", with: @setting.reserve
    click_on "Update Setting"

    assert_text "Setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Setting" do
    visit settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Setting was successfully destroyed"
  end
end
