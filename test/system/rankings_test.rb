require "application_system_test_case"

class RankingsTest < ApplicationSystemTestCase
  setup do
    @ranking = rankings(:one)
  end

  test "visiting the index" do
    visit rankings_url
    assert_selector "h1", text: "Rankings"
  end

  test "creating a Ranking" do
    visit rankings_url
    click_on "New Ranking"

    fill_in "Fifth", with: @ranking.fifth
    fill_in "First", with: @ranking.first
    fill_in "Fourth", with: @ranking.fourth
    fill_in "Second", with: @ranking.second
    fill_in "Third", with: @ranking.third
    fill_in "Title", with: @ranking.title
    click_on "Create Ranking"

    assert_text "Ranking was successfully created"
    click_on "Back"
  end

  test "updating a Ranking" do
    visit rankings_url
    click_on "Edit", match: :first

    fill_in "Fifth", with: @ranking.fifth
    fill_in "First", with: @ranking.first
    fill_in "Fourth", with: @ranking.fourth
    fill_in "Second", with: @ranking.second
    fill_in "Third", with: @ranking.third
    fill_in "Title", with: @ranking.title
    click_on "Update Ranking"

    assert_text "Ranking was successfully updated"
    click_on "Back"
  end

  test "destroying a Ranking" do
    visit rankings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ranking was successfully destroyed"
  end
end
