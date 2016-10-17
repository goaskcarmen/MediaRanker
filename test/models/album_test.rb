require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "validations: album name can't be blank" do
   album = Album.new

   assert_not album.valid? "An album without a name is invalid."
   assert_not album.save
 end

 test "The album Abbey Road is by artist the beatles" do
   assert_equal albums(:abbey_road).artist, "The Beatles"
 end

 test "The album Hometown Glory's rank is 15" do
   assert_equal albums(:hometown_glory).ranked, 15
 end

 test "The greatest Hits' rank is NOT 20" do
   assert_not_equal albums(:greatest_hits).ranked, 20
 end
end
