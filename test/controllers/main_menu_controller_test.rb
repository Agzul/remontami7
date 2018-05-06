require 'test_helper'

class MainMenuControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_menu_home_url
    assert_response :success
  end

  test "should get prices" do
    get main_menu_prices_url
    assert_response :success
  end

  test "should get information" do
    get main_menu_information_url
    assert_response :success
  end

  test "should get consumption_of_materials" do
    get main_menu_consumption_of_materials_url
    assert_response :success
  end

  test "should get contacts" do
    get main_menu_contacts_url
    assert_response :success
  end

end
