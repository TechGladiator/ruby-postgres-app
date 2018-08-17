require 'test_helper'

class StunControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stun_index_url
    assert_response :success
  end

end
