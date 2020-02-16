require 'test_helper'

class PackagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get packages_create_url
    assert_response :success
  end

  test "should get destroy" do
    get packages_destroy_url
    assert_response :success
  end

  test "should get show" do
    get packages_show_url
    assert_response :success
  end

  test "should get index" do
    get packages_index_url
    assert_response :success
  end

  test "should get new" do
    get packages_new_url
    assert_response :success
  end

  test "should get edit" do
    get packages_edit_url
    assert_response :success
  end

  test "should get update" do
    get packages_update_url
    assert_response :success
  end

end
