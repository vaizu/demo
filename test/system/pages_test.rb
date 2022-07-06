require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  setup do
    @page = pages(:one)
  end

  test "visiting the index" do
    visit pages_url
    assert_selector "h1", text: "Pages"
  end

  test "creating a Page" do
    visit pages_url
    click_on "New Page"

    check "Access" if @page.access
    check "Attendance" if @page.attendance
    check "Diary" if @page.diary
    check "Event" if @page.event
    check "Home" if @page.home
    check "Inquiry" if @page.inquiry
    check "Link" if @page.link
    check "Mail" if @page.mail
    check "Movie" if @page.movie
    check "Price" if @page.price
    check "Privacy" if @page.privacy
    check "Ranking" if @page.ranking
    check "Recruitment" if @page.recruitment
    check "Reserve" if @page.reserve
    check "Therapist" if @page.therapist
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "updating a Page" do
    visit pages_url
    click_on "Edit", match: :first

    check "Access" if @page.access
    check "Attendance" if @page.attendance
    check "Diary" if @page.diary
    check "Event" if @page.event
    check "Home" if @page.home
    check "Inquiry" if @page.inquiry
    check "Link" if @page.link
    check "Mail" if @page.mail
    check "Movie" if @page.movie
    check "Price" if @page.price
    check "Privacy" if @page.privacy
    check "Ranking" if @page.ranking
    check "Recruitment" if @page.recruitment
    check "Reserve" if @page.reserve
    check "Therapist" if @page.therapist
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "destroying a Page" do
    visit pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page was successfully destroyed"
  end
end
