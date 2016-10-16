# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('seed_csvs/movies.csv', :headers => true ) do |movie_obj|
  Movie.create(name: movie_obj["name"], ranked: movie_obj["ranked"], director: movie_obj["director"], description: movie_obj["description"])
end

CSV.foreach('seed_csvs/books.csv', :headers => true ) do |book_obj|
  Book.create(name: book_obj["name"], ranked: book_obj["ranked"], author: book_obj["author"], description: book_obj["description"])
end

CSV.foreach('seed_csvs/albums.csv', :headers => true ) do |album_obj|
  Album.create(name: album_obj["name"], ranked: album_obj["ranked"], artist: album_obj["artist"], description: album_obj["description"])
end
