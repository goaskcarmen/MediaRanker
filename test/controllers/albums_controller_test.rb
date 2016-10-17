require 'test_helper'

class AlbumsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: albums(:abbey_road).id}
    assert_response :success
  end

  test "should be able to create an album" do
    post_params = {album: {name: "One Album"}}
    post :create, post_params
    assert_response :redirect
  end

  test "Creating a album changes the number of albums" do
    assert_difference('Album.count', 1) do
      post_params = {album: {name: "One Album"}}
      post :create, post_params
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: albums(:abbey_road).id}
    assert_response :success
  end

  test "should be able to update" do
    patch :update, {id: albums(:abbey_road).id}, :album => {:description => "Another Beattle's album."}
    assert_equal "Another Beattle's album.", Album.find(albums(:abbey_road)).description
  end

  test "Should be able to delete an album" do
    delete :destroy, {id: albums(:abbey_road).id}
    assert_response :redirect
  end

  test "Should be able to upvote an album" do
    put :upvote, {id: albums(:hometown_glory).id}
    assert_response :redirect
  end

end
