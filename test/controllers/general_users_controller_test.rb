require 'test_helper'

class GeneralUsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

end
