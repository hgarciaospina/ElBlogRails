require 'test_helper'

class PublicMeetsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get public_meets_new_url
    assert_response :success
  end

end
