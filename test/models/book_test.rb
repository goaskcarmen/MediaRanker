require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "validations: book name can't be blank" do
   book = Book.new

   assert_not book.valid? "A book without a name is invalid."
   assert_not book.save
  end

  test "Book Two by Two is by author nicholas sparks" do
   assert_equal books(:two_by_two).author, "nicholas sparks"
  end

  test "Book Harry Potter is NOT by nicholas sparks" do
   assert_not_equal books(:harry_potter).author, "nicholas sparks"
  end
end
