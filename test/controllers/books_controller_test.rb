require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template :index
  end

  test "should get show" do
    get :show, {id: books(:two_by_two).id}
    assert_response :success
  end

  test "should be able to create a book" do
    post_params = {book: {name: "Another book"}}
    post :create, post_params
    assert_response :redirect
  end

  test "Creating a book changes the number of books" do
    assert_difference('Book.count', 1) do
      post_params = {book: {name: "New Book"}}
      post :create, post_params
    end
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, {id: books(:harry_potter).id}
    assert_response :success
  end

  test "should be able to update" do
    patch :update, {id: books(:harry_potter).id}, :book => {:description => "Best seller this year."}
    assert_equal "Best seller this year.", Book.find(books(:harry_potter)).description
  end

  test "Should be able to delete book" do
    delete :destroy, {id: books(:two_by_two).id}
    assert_response :redirect
  end

  test "Should be able to upvote a book" do
    put :upvote, {id: books(:harry_potter).id}
    assert_response :redirect
  end

end
