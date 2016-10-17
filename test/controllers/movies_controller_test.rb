require 'test_helper'

class MoviesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: movies(:the_hunger_game).id}
    assert_response :success
  end

  test "should be able to create a movie" do
    post_params = {movie: {name: "Hit Movie"}}
    post :create, post_params
    assert_response :redirect
  end

  test "Creating a book changes the number of movies" do
    assert_difference('Movie.count', 1) do
      post_params = {movie: {name: "New Movie"}}
      post :create, post_params
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: movies(:independence_day).id}
    assert_response :success
  end

  test "should be able to update" do
    patch :update, {id: movies(:independence_day).id, :movie => movies(:independence_day).attributes.merge({"description" => "Best movie."})}
    assert_equal "Best movie.", Movie.find(movies(:independence_day)).description
  end

  test "Should be able to delete a movie" do
    delete :destroy, {id: movies(:the_hunger_game).id}
    assert_response :redirect
  end

  test "Should be able to upvote a movie" do
    put :upvote, {id: movies(:independence_day).id}
    assert_response :redirect
  end

end
