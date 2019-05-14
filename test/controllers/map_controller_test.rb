require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get map_view_url
    assert_response :success
  end

end
