require 'test_helper'

class AdvocatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get advocates_index_url
    assert_response :success
  end

end
