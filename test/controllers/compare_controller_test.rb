require 'test_helper'

class CompareControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get compare_index_url
    assert_response :success
  end

  test "should get new" do
    get compare_new_url
    assert_response :success
  end

end
