class Library

  attr_reader :books

  def initialize()
    @books = []
  end

  def add_book(book)
    @books << book
  end

  def get_book_details(book_title)
    for book in @books
      if book[:title] == book_title
        return book
      end
    end
    return nil # not found that book
  end

  def get_rental_details(book_title)
    get_book_details(book_title)[:rental_details]
  end

  def add_new_book(book_title)
    new_book_hash = {
      title: book_title,
      rental_details: {
        student_name: '',
        date: ''
      }
    }
    add_book(new_book_hash)
  end

  def edit_rental_details(book_title, student, date)
    book = get_book_details(book_title)
    book[:rental_details][:student] = student
    book[:rental_details][:date] = date    
  end

end
