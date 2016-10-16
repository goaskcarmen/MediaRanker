class MoviesController < ApplicationController
  def index
    @allmovies = Movie.all.order("ranked").reverse
  end

  def show
    @movie = Movie.find(params[:id].to_i)
  end

  def create
    @params = params

    @movie = Movie.create({name: params[:movie][:name], director: params[:movie][:director], ranked: params[:movie][:ranked], description: params[:movie][:description]})

    redirect_to :action => "show", :id => @movie.id
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id].to_i)
  end

  def update
    @params = params

    self.edit

    @movie.update({name: params[:movie][:name], director: params[:movie][:director], ranked: params[:movie][:ranked], description: params[:movie][:description]})

    redirect_to :action => "show", :id => @movie.id
  end

  def destroy
    num = params[:id].to_i
    Movie.find(num).destroy
    redirect_to action: "index"
  end

  def upvote
    @movie = Movie.find(params[:id].to_i)
    @movie.ranked += 1

    @movie.save

    redirect_to :action => "show", :id => @movie.id
  end
end
