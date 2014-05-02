require 'test_helper'

class PlayControllerTest < ActionController::TestCase
  test "should show throw result" do
    post :throw, :sign=>"rock"
    assert_response :success
    assert_not_nil assigns(:computer_sign)
    assert_not_nil assigns(:user_sign)
    assert defined? assigns(:result) != nil
  end
  
  test "should show throw result when user does not pick a sign" do
    post :throw
    assert_response :success
    assert_not_nil assigns(:computer_sign)
    assert_not_nil assigns(:user_sign)
    assert defined? assigns(:result) != nil
  end

  test "should show new game form" do
    get :new
    assert_response :success
  end
end
