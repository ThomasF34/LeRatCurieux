require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Le Rat Curieux"
  end
  
  test "should get root" do 
    get root_url
    assert_response :success
  end 

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "#{@base_title}"

  end

  test "should get privacy" do 
    get privacy_url
    assert_response :success
    assert_select "title", "Confidentialité - #{@base_title}"
  end 

  test "shoud get contact" do 
    get contact_url
    assert_response :success
    assert_select "title", "Contact - #{@base_title}"
  end
end
