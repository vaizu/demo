require "application_system_test_case"

class LinksTest < ApplicationSystemTestCase
  setup do
    @link = links(:one)
  end

  test "visiting the index" do
    visit links_url
    assert_selector "h1", text: "Links"
  end

  test "creating a Link" do
    visit links_url
    click_on "New Link"

    fill_in "Banner size", with: @link.banner_size
    fill_in "Link code", with: @link.link_code
    check "Link place" if @link.link_place
    fill_in "Site name", with: @link.site_name
    fill_in "Site url", with: @link.site_url
    click_on "Create Link"

    assert_text "Link was successfully created"
    click_on "Back"
  end

  test "updating a Link" do
    visit links_url
    click_on "Edit", match: :first

    fill_in "Banner size", with: @link.banner_size
    fill_in "Link code", with: @link.link_code
    check "Link place" if @link.link_place
    fill_in "Site name", with: @link.site_name
    fill_in "Site url", with: @link.site_url
    click_on "Update Link"

    assert_text "Link was successfully updated"
    click_on "Back"
  end

  test "destroying a Link" do
    visit links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link was successfully destroyed"
  end
end
