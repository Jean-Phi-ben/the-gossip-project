require 'test_helper'

class Static::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end

end
