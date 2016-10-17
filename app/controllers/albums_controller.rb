class AlbumsController < ApplicationController
  def index
    @allalbums = Album.all.order("ranked").reverse
  end

  def show
    @album = Album.find(params[:id].to_i)
  end

  def create
    @params = params

    @album = Album.create({name: params[:album][:name], artist: params[:album][:artist], ranked: params[:album][:ranked], description: params[:album][:description]})

    redirect_to :action => "show", :id => @album.id
  end

  def new
    @album = Album.new
  end

  def edit
    @album = Album.find(params[:id].to_i)
  end

  def update
    @params = params

    self.edit

    @album.update_attributes({name: params[:album][:name], artist: params[:album][:artist], ranked: params[:album][:ranked], description: params[:album][:description]})


    redirect_to :action => "show", :id => @album.id
  end

  def destroy
    num = params[:id].to_i
    Album.find(num).destroy
    redirect_to action: "index"
  end

  def upvote
    @album = Album.find(params[:id].to_i)
    @album.ranked += 1

    @album.save

    redirect_to :action => "show", :id => @album.id
  end
end
