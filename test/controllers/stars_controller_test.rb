require 'test_helper'

class StarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get stars_new_url
    assert_response :success
  end

end
