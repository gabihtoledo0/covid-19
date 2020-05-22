require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get information_show_url
    assert_response :success
  end

end
