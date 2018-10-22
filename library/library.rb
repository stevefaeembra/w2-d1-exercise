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
      p book
      if book[:title] == book_title
        return book
      end
    end
    p "Not found"
    return nil # not found that book
  end

end
