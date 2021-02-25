require "test_helper"

class PecuniaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pecunia_index_url
    assert_response :success
  end
end
