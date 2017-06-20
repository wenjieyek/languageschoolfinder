require 'test_helper'

class SchoolAttachmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_attachments_index_url
    assert_response :success
  end

  test "should get show" do
    get school_attachments_show_url
    assert_response :success
  end

  test "should get new" do
    get school_attachments_new_url
    assert_response :success
  end

  test "should get edit" do
    get school_attachments_edit_url
    assert_response :success
  end

  test "should get delete" do
    get school_attachments_delete_url
    assert_response :success
  end

end
