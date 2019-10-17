require 'test_helper'

class MemomemosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memomemos_index_url
    assert_response :success
  end

end
