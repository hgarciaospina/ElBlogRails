require 'test_helper'

class PublicPostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_posts_index_url
    assert_response :success
  end

  test "should get show" do
    get public_posts_show_url
    assert_response :success
  end

  test "should get posts_category" do
    get public_posts_posts_category_url
    assert_response :success
  end

end
