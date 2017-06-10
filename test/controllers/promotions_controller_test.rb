require 'test_helper'

class PromotionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get promotions_index_url
    assert_response :success
  end

  test "should get new" do
    get promotions_new_url
    assert_response :success
  end

  test "should get show" do
    get promotions_show_url
    assert_response :success
  end

  test "should get edit" do
    get promotions_edit_url
    assert_response :success
  end

  test "should get delete" do
    get promotions_delete_url
    assert_response :success
  end

end
