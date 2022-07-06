require "application_system_test_case"

class SnsTest < ApplicationSystemTestCase
  setup do
    @sn = sns(:one)
  end

  test "visiting the index" do
    visit sns_url
    assert_selector "h1", text: "Sns"
  end

  test "creating a Sn" do
    visit sns_url
    click_on "New Sn"

    fill_in "Blog", with: @sn.blog
    fill_in "Customers line", with: @sn.customers_line
    check "Line reserve" if @sn.line_reserve
    fill_in "Recruiting line", with: @sn.recruiting_line
    fill_in "Twitter", with: @sn.twitter
    click_on "Create Sn"

    assert_text "Sn was successfully created"
    click_on "Back"
  end

  test "updating a Sn" do
    visit sns_url
    click_on "Edit", match: :first

    fill_in "Blog", with: @sn.blog
    fill_in "Customers line", with: @sn.customers_line
    check "Line reserve" if @sn.line_reserve
    fill_in "Recruiting line", with: @sn.recruiting_line
    fill_in "Twitter", with: @sn.twitter
    click_on "Update Sn"

    assert_text "Sn was successfully updated"
    click_on "Back"
  end

  test "destroying a Sn" do
    visit sns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sn was successfully destroyed"
  end
end
