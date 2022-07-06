require "test_helper"

class SnsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sn = sns(:one)
  end

  test "should get index" do
    get sns_url
    assert_response :success
  end

  test "should get new" do
    get new_sn_url
    assert_response :success
  end

  test "should create sn" do
    assert_difference('Sn.count') do
      post sns_url, params: { sn: { blog: @sn.blog, customers_line: @sn.customers_line, line_reserve: @sn.line_reserve, recruiting_line: @sn.recruiting_line, twitter: @sn.twitter } }
    end

    assert_redirected_to sn_url(Sn.last)
  end

  test "should show sn" do
    get sn_url(@sn)
    assert_response :success
  end

  test "should get edit" do
    get edit_sn_url(@sn)
    assert_response :success
  end

  test "should update sn" do
    patch sn_url(@sn), params: { sn: { blog: @sn.blog, customers_line: @sn.customers_line, line_reserve: @sn.line_reserve, recruiting_line: @sn.recruiting_line, twitter: @sn.twitter } }
    assert_redirected_to sn_url(@sn)
  end

  test "should destroy sn" do
    assert_difference('Sn.count', -1) do
      delete sn_url(@sn)
    end

    assert_redirected_to sns_url
  end
end
