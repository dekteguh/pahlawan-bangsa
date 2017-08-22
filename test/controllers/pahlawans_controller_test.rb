require 'test_helper'

class PahlawansControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pahlawans_index_url
    assert_response :success
  end

  test "should get show" do
    get pahlawans_show_url
    assert_response :success
  end

  test "should get new" do
    get pahlawans_new_url
    assert_response :success
  end

  test "should get create" do
    get pahlawans_create_url
    assert_response :success
  end

  test "should get edit" do
    get pahlawans_edit_url
    assert_response :success
  end

  test "should get update" do
    get pahlawans_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pahlawans_destroy_url
    assert_response :success
  end

end
