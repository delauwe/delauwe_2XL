require 'test_helper'

class ApartmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apartments_index_url
    assert_response :success
  end

  test "should get show" do
    get apartments_show_url
    assert_response :success
  end

  test "should get new" do
    get apartments_new_url
    assert_response :success
  end

  test "should get create" do
    get apartments_create_url
    assert_response :success
  end

  test "should get edit" do
    get apartments_edit_url
    assert_response :success
  end

  test "should get update" do
    get apartments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get apartments_destroy_url
    assert_response :success
  end

end
