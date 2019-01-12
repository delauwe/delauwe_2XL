require 'test_helper'

class SitemapsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sitemaps_index_url
    assert_response :success
  end

  test "should get init_sitemap" do
    get sitemaps_init_sitemap_url
    assert_response :success
  end

end
