require "test_helper"

class TherapistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @therapist = therapists(:one)
  end

  test "should get index" do
    get therapists_url
    assert_response :success
  end

  test "should get new" do
    get new_therapist_url
    assert_response :success
  end

  test "should create therapist" do
    assert_difference('Therapist.count') do
      post therapists_url, params: { therapist: { age: @therapist.age, bust: @therapist.bust, catch_copy: @therapist.catch_copy, cup: @therapist.cup, diary: @therapist.diary, height: @therapist.height, hips: @therapist.hips, name: @therapist.name, shop_message: @therapist.shop_message, therapist_message: @therapist.therapist_message, twitter_url: @therapist.twitter_url, type: @therapist.type, waist: @therapist.waist } }
    end

    assert_redirected_to therapist_url(Therapist.last)
  end

  test "should show therapist" do
    get therapist_url(@therapist)
    assert_response :success
  end

  test "should get edit" do
    get edit_therapist_url(@therapist)
    assert_response :success
  end

  test "should update therapist" do
    patch therapist_url(@therapist), params: { therapist: { age: @therapist.age, bust: @therapist.bust, catch_copy: @therapist.catch_copy, cup: @therapist.cup, diary: @therapist.diary, height: @therapist.height, hips: @therapist.hips, name: @therapist.name, shop_message: @therapist.shop_message, therapist_message: @therapist.therapist_message, twitter_url: @therapist.twitter_url, type: @therapist.type, waist: @therapist.waist } }
    assert_redirected_to therapist_url(@therapist)
  end

  test "should destroy therapist" do
    assert_difference('Therapist.count', -1) do
      delete therapist_url(@therapist)
    end

    assert_redirected_to therapists_url
  end
end
