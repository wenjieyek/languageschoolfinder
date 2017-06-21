require 'test_helper'

class StatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get states_index_url
    assert_response :success
  end

  test "should get new" do
    get states_new_url
    assert_response :success
  end

  test "should get edit" do
    get states_edit_url
    assert_response :success
  end

  test "should get delete" do
    get states_delete_url
    assert_response :success
  end

end
