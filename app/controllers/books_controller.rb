class BooksController < ApplicationController
  def index
    @allbooks = Book.all.order("ranked").reverse
  end

  def show
    @book = Book.find(params[:id].to_i)
  end

  def create
    @params = params

    @book = Book.create({name: params[:book][:name], author: params[:book][:author], ranked: params[:book][:ranked], description: params[:book][:description]})

    redirect_to :action => "show", :id => @book.id
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id].to_i)
  end

  def update
    @params = params

    self.edit

    @book.update({name: params[:book][:name], author: params[:book][:author], ranked: params[:book][:ranked], description: params[:book][:description]})

    redirect_to :action => "show", :id => @book.id
  end

  def destroy
    num = params[:id].to_i
    Book.find(num).destroy
    redirect_to action: "index"
  end

  def upvote
    @book = Book.find(params[:id].to_i)
    @book.ranked += 1

    @book.save

    redirect_to :action => "show", :id => @book.id
  end
end
