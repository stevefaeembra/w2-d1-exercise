require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < MiniTest::Test

  def setup
    @book_example = {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    }
    @library = Library.new()
    @library.add_book(@book_example)

  end

  def test_add_book
    @library.add_book(
      {
        title: "passing_time_on_the_loo",
        rental_details: {
          student_name: "Steven",
          date: "01/12/18"
        }
      }
    )
    assert @library.books[0].length == 2
  end

  def test_make_library

    assert @library.books[0][:title]=="lord_of_the_rings"
  end

  def test_get_book_details
    book_details = @library.get_book_details("lord_of_the_rings")
    assert_equal("lord_of_the_rings", book_details[:title])
  end

  def test_get_rental_details_for_book
    rental_details = @library.get_rental_details("lord_of_the_rings")
    assert_equal("Jeff", rental_details[:student_name])
    assert_equal("01/12/16", rental_details[:date])
  end

  def test_add_book_to_library
    @library.add_new_book("lord_of_the_flies")
    assert_equal(2,@library.books.length)
    book_details = @library.get_book_details("lord_of_the_flies")
    assert_equal("lord_of_the_flies", book_details[:title])
  end

end
