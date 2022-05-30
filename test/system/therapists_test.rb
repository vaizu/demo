require "application_system_test_case"

class TherapistsTest < ApplicationSystemTestCase
  setup do
    @therapist = therapists(:one)
  end

  test "visiting the index" do
    visit therapists_url
    assert_selector "h1", text: "Therapists"
  end

  test "creating a Therapist" do
    visit therapists_url
    click_on "New Therapist"

    fill_in "Age", with: @therapist.age
    fill_in "Bust", with: @therapist.bust
    fill_in "Catch copy", with: @therapist.catch_copy
    fill_in "Cup", with: @therapist.cup
    fill_in "Diary", with: @therapist.diary
    fill_in "Height", with: @therapist.height
    fill_in "Hips", with: @therapist.hips
    fill_in "Name", with: @therapist.name
    fill_in "Shop message", with: @therapist.shop_message
    fill_in "Therapist message", with: @therapist.therapist_message
    fill_in "Twitter url", with: @therapist.twitter_url
    fill_in "Type", with: @therapist.type
    fill_in "Waist", with: @therapist.waist
    click_on "Create Therapist"

    assert_text "Therapist was successfully created"
    click_on "Back"
  end

  test "updating a Therapist" do
    visit therapists_url
    click_on "Edit", match: :first

    fill_in "Age", with: @therapist.age
    fill_in "Bust", with: @therapist.bust
    fill_in "Catch copy", with: @therapist.catch_copy
    fill_in "Cup", with: @therapist.cup
    fill_in "Diary", with: @therapist.diary
    fill_in "Height", with: @therapist.height
    fill_in "Hips", with: @therapist.hips
    fill_in "Name", with: @therapist.name
    fill_in "Shop message", with: @therapist.shop_message
    fill_in "Therapist message", with: @therapist.therapist_message
    fill_in "Twitter url", with: @therapist.twitter_url
    fill_in "Type", with: @therapist.type
    fill_in "Waist", with: @therapist.waist
    click_on "Update Therapist"

    assert_text "Therapist was successfully updated"
    click_on "Back"
  end

  test "destroying a Therapist" do
    visit therapists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Therapist was successfully destroyed"
  end
end
