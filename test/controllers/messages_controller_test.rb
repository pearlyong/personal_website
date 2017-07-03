require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get contact_url
    assert_response :success
  end

end
