require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "validations: movie name can't be blank" do
   movie = Movie.new

   assert_not movie.valid? "A movie without a name is invalid."
   assert_not movie.save
  end

  test "The movie The Hunger Games was directed by Francis Lawrence" do
    assert_equal movies(:the_hunger_game).director, "Francis Lawrence"
  end

  test "The movie Independence Day doesn't have a rank of 20" do
    assert_not_equal movies(:independence_day).ranked, 20
  end
end
