class GeneralUsersController < ApplicationController
  DISPLAY_NUM = 5

  def index
      @movies = Movie.all.order('name').limit(DISPLAY_NUM)
      puts @movies[0].name
      @books = Book.all.order('name').limit(DISPLAY_NUM)
      @albums = Album.all.order('name').limit(DISPLAY_NUM)
  end
end
