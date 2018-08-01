require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get new_html" do
    get user_new_html_url
    assert_response :success
  end

  test "should get create_html" do
    get user_create_html_url
    assert_response :success
  end

  test "should get create_form_tag" do
    get user_create_form_tag_url
    assert_response :success
  end

  test "should get create_form_for" do
    get user_create_form_for_url
    assert_response :success
  end

  test "should get error" do
    get user_error_url
    assert_response :success
  end

  test "should get my" do
    get user_my_url
    assert_response :success
  end

end
