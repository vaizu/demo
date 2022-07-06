require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get new" do
    get new_page_url
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post pages_url, params: { page: { access: @page.access, attendance: @page.attendance, diary: @page.diary, event: @page.event, home: @page.home, inquiry: @page.inquiry, link: @page.link, mail: @page.mail, movie: @page.movie, price: @page.price, privacy: @page.privacy, ranking: @page.ranking, recruitment: @page.recruitment, reserve: @page.reserve, therapist: @page.therapist } }
    end

    assert_redirected_to page_url(Page.last)
  end

  test "should show page" do
    get page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :success
  end

  test "should update page" do
    patch page_url(@page), params: { page: { access: @page.access, attendance: @page.attendance, diary: @page.diary, event: @page.event, home: @page.home, inquiry: @page.inquiry, link: @page.link, mail: @page.mail, movie: @page.movie, price: @page.price, privacy: @page.privacy, ranking: @page.ranking, recruitment: @page.recruitment, reserve: @page.reserve, therapist: @page.therapist } }
    assert_redirected_to page_url(@page)
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page)
    end

    assert_redirected_to pages_url
  end
end
