require 'test_helper'

class SchoolUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_users_index_url
    assert_response :success
  end

  test "should get new" do
    get school_users_new_url
    assert_response :success
  end

  test "should get edit" do
    get school_users_edit_url
    assert_response :success
  end

end
