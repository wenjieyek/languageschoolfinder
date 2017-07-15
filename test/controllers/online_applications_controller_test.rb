require 'test_helper'

class OnlineApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get online_applications_index_url
    assert_response :success
  end

  test "should get new" do
    get online_applications_new_url
    assert_response :success
  end

  test "should get edit" do
    get online_applications_edit_url
    assert_response :success
  end

  test "should get show" do
    get online_applications_show_url
    assert_response :success
  end

end
