require "test_helper"

class SettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting = settings(:one)
  end

  test "should get index" do
    get settings_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_url
    assert_response :success
  end

  test "should create setting" do
    assert_difference('Setting.count') do
      post settings_url, params: { setting: { address: @setting.address, business_trip: @setting.business_trip, cast: @setting.cast, cast_ja: @setting.cast_ja, closing: @setting.closing, customer_tel: @setting.customer_tel, holiday: @setting.holiday, login_id: @setting.login_id, login_pass: @setting.login_pass, mail: @setting.mail, nearest: @setting.nearest, opening: @setting.opening, recruiting_tel: @setting.recruiting_tel, reserve: @setting.reserve } }
    end

    assert_redirected_to setting_url(Setting.last)
  end

  test "should show setting" do
    get setting_url(@setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_url(@setting)
    assert_response :success
  end

  test "should update setting" do
    patch setting_url(@setting), params: { setting: { address: @setting.address, business_trip: @setting.business_trip, cast: @setting.cast, cast_ja: @setting.cast_ja, closing: @setting.closing, customer_tel: @setting.customer_tel, holiday: @setting.holiday, login_id: @setting.login_id, login_pass: @setting.login_pass, mail: @setting.mail, nearest: @setting.nearest, opening: @setting.opening, recruiting_tel: @setting.recruiting_tel, reserve: @setting.reserve } }
    assert_redirected_to setting_url(@setting)
  end

  test "should destroy setting" do
    assert_difference('Setting.count', -1) do
      delete setting_url(@setting)
    end

    assert_redirected_to settings_url
  end
end
